package WebGUI::Asset;

=head1 LEGAL

 -------------------------------------------------------------------
  WebGUI is Copyright 2001-2012 Plain Black Corporation.
 -------------------------------------------------------------------
  Please read the legal notices (docs/legal.txt) and the license
  (docs/license.txt) that came with this distribution before using
  this software.
 -------------------------------------------------------------------
  http://www.plainblack.com                     info@plainblack.com
 -------------------------------------------------------------------

=cut

use strict;
use Number::Format ();
use JSON;

=head1 NAME

Package WebGUI::Asset (AssetTrash)

=head1 DESCRIPTION

This is a mixin package for WebGUI::Asset that contains all trash related functions.

=head1 SYNOPSIS

 use WebGUI::Asset;

=head1 METHODS

These methods are available from this class:

=cut


#-------------------------------------------------------------------

=head2 getAssetsInTrash ( [limitToUser,userId] )

Returns an array reference of title, assetId, and classname to the assets in the Trash.

=head3 limitToUser

If True, only return assets last updated by userId.

=head3 userId

If not specified, uses current user.

=cut

sub getAssetsInTrash {
	my $self = shift;
	my $limitToUser = shift;
	my $userId = shift || $self->session->user->userId;
	my $limit;
	if ($limitToUser) {
		$limit = "asset.stateChangedBy=".$self->session->db->quote($userId);
	}
    my $root = WebGUI::Asset->getRoot($self->session);
    return $root->getLineage(
       ["descendants", ],
       {
           statesToInclude => ["trash"],
           statusToInclude => [qw/approved pending archived/],
           returnObjects   => 1,
           whereClause     => $limit,
       }
    );
}

#----------------------------------------------------------------------------

=head2 isInTrash ( )

Returns true if the asset is in the trash.

=cut

sub isInTrash {
    my $self        = shift;
    return $self->get("state") eq "trash";
}

#-------------------------------------------------------------------

=head2 purge (  [ options ] )

Deletes an asset from tables and removes anything bound to that asset, including descendants. Returns 1 on success
and 0 on failure.

=head3 options

A hash refernece containing options that change the behavior of this method.

=head4 skipExported

A boolean that, if true, will skip dealing with exported files.

=head4 outputSub

A subroutine used to report the status of the purge, most likely used by WebGUI::ProgressBar->update.

=cut

sub purge {
	my $self      = shift;
	my $options   = shift;
    my $session   = $self->session;
    my $outputSub = $options->{outputSub} || sub {};
    my $i18n      = WebGUI::International->new($session, 'Asset');

    # can't delete if it's one of these things
	if ($self->getId eq $session->setting->get("defaultPage") || $self->getId eq $session->setting->get("notFoundPage") || $self->get("isSystem")) {
        $outputSub->(sprintf $i18n->get('Trying to delete system page %s.  Aborting'), $self->getTitle);
        $session->log->security("delete a system protected page (".$self->getId.")");
        return 0;
    }

    # assassinate the offspring
	my $childIter = $self->getLineageIterator(["children"],{
        statesToInclude => [qw(published clipboard clipboard-limbo trash trash-limbo)],
        statusToInclude => [qw(approved archived pending)],
    });
        while ( 1 ) {
            my $child;
            eval { $child = $childIter->() };
            if ( my $x = WebGUI::Error->caught('WebGUI::Error::ObjectNotFound') ) {
                $session->log->error($x->full_message);
                next;
            }
            last unless $child;
            unless ($child->purge) {
                $session->log->security("delete one of (".$self->getId.")'s children which is a system protected page");
                $outputSub->(sprintf $i18n->get('Trying to delete system page %s.  Aborting'), $self->getTitle);
                return 0;
            }
	}

    # Delete shortcuts to this asset
    # Also purge any shortcuts to this asset that are in the trash
    $outputSub->($i18n->get('Purging shortcuts'));
    require WebGUI::Asset::Shortcut;
    my $shortcuts 
        = WebGUI::Asset::Shortcut->getShortcutsForAssetId($self->session, $self->getId, { 
            returnObjects   => 1,
        });
    for my $shortcut ( @$shortcuts ) {
        $shortcut->purge({ outputSub => $outputSub, });
    }

    # gotta delete stuff we've exported
	unless ($options->{skipExported}) {
        $outputSub->($i18n->get('Deleting exported files'));
		$self->_invokeWorkflowOnExportedFiles($session->setting->get('purgeWorkflow'), 1);
	}

    # gonna need this at the end
    my $tags  = $session->db->buildArrayRef('select tagId from assetData where assetId=?',[$self->getId]);
    my $tagId = $self->get("tagId");

    # clean up keywords
    $outputSub->($i18n->get('Deleting keywords'));
    WebGUI::Keyword->new($session)->deleteKeywordsForAsset($self);

    # clean up search engine
    $outputSub->($i18n->get('Clearing search index'));
    WebGUI::Search::Index->new($self)->delete;

    # clean up cache
    $outputSub->($i18n->get('Clearing cache'));
	$self->purgeCache;

    # delete stuff out of the asset tables
    $outputSub->($i18n->get('Clearing asset tables'));
	$session->db->beginTransaction;
	$session->db->write("delete from metaData_values where assetId = ?",[$self->getId]);
	foreach my $table ($self->meta->get_tables) {
		$session->db->write("delete from ".$table." where assetId=?", [$self->getId]);
	}
	$session->db->write("delete from asset where assetId=?", [$self->getId]);
	$session->db->commit;

    # log that we've purged this asset
	$self->updateHistory("purged");
	$self = undef;

    # clean up version tag if empty
    foreach my $tagId (@{ $tags }) {
        my $versionTag = WebGUI::VersionTag->new($session, $tagId);
        if ($versionTag && $versionTag->getAssetCount == 0) {
            $versionTag->rollback;
        }
    }

    return 1;
}

#-------------------------------------------------------------------

=head2 purgeInFork

WebGUI::Fork method called by www_purgeList

=cut

sub purgeInFork {
    my ( $process, $list ) = @_;
    my $session = $process->session;
    my @roots = grep { $_ && $_->canEdit }
        map { WebGUI::Asset->newPending( $session, $_ ) } @$list;

    my @ids = map {
        my $list = $_->getLineage(
            [ 'self', 'descendants' ], {
                statesToInclude => [qw(published clipboard clipboard-limbo trash trash-limbo)],
                statusToInclude => [qw(approved archived pending)],
            }
        );
        @$list;
    } @roots;

    my $tree = WebGUI::ProgressTree->new( $session, \@ids );
    $process->update( sub { $tree->json } );
    my $patch = Monkey::Patch::patch_class(
        'WebGUI::Asset',
        'purge',
        sub {
            my ( $purge, $self, $options ) = @_;
            my $id   = $self->getId;
            my $zero = '';
            $tree->focus($id);
            $options ||= {};
            local $options->{outputSub} = sub { $zero .= $_[0] };
            my $ret = eval { $self->$purge($options) };
            my $e = $@;
            $tree->focus($id);

            if ($e) {
                $tree->failure( $id, 'Died' );
                $tree->note( $id, $e );
            }
            elsif ( !$ret ) {
                $tree->failure( $id, 'Failed' );
                $tree->note( $id, $zero );
            }
            else {
                $tree->success($id);
            }
            $process->update( sub { $tree->json } );
            die $e if $e;
            return $ret;
        }
    );
    $_->purge for @roots;
} ## end sub purgeInFork

#-------------------------------------------------------------------

=head2 restore

Publishes assets from the trash.

=cut

sub restore {
   my $self = shift;
   $self->publish;
}


#-------------------------------------------------------------------

=head2 trash ( $options )

Removes asset from lineage, places it in trash state. The "gap" in the 
lineage is changed in state to trash-limbo.  Returns 1 if the trash
was successful, otherwise it return undef.

=head3 $options

An optional hashref of options

=head4 outputSub

A subroutine used to report the status of the purge, most likely used by WebGUI::ProgressBar->update.

=cut

sub trash {
    my $self      = shift;
	my $options   = shift;
    my $session   = $self->session;
    my $outputSub = $options->{outputSub} || sub {};
    my $i18n      = WebGUI::International->new($session, 'Asset');

    if ($self->getId eq $session->setting->get("defaultPage") || $self->getId eq $session->setting->get("notFoundPage") || $self->get('isSystem')) {
        $outputSub->(sprintf $i18n->get('Trying to delete system page %s.  Aborting'), $self->getTitle);
        $session->log->security("delete a system protected page (".$self->getId.")");
        return undef;
    }

    my $assetIter = $self->getLineageIterator(
        ['self','descendants'], {
            statesToInclude => [qw(published clipboard clipboard-limbo trash trash-limbo)],
            statusToInclude => [qw(approved archived pending)],
        }
    );
    my $rootId    = $self->getId;
    while ( 1 ) {
        my $asset;
        eval { $asset = $assetIter->() };
        if ( my $x = WebGUI::Error->caught('WebGUI::Error::ObjectNotFound') ) {
            $session->log->error($x->full_message);
            next;
        }
        last unless $asset;
        $outputSub->($i18n->get('Clearing search index'));
        my $index = WebGUI::Search::Index->new($asset);
        $index->delete;
        $outputSub->($i18n->get('Deleting exported files'));
        $asset->_invokeWorkflowOnExportedFiles($session->setting->get('trashWorkflow'), 1);
        $outputSub->($i18n->get('Clearing cache'));
        $asset->purgeCache;
        $asset->updateHistory("trashed");
        if ($asset->getId eq $rootId) {
            $asset->setState('trash');
            # setState will take care of _properties in $asset, but not in
            # $self (whooops!), so we need to manually update.
            my @keys = qw(state stateChangedBy stateChanged);
            $self->state($asset->state);
            $self->stateChangedBy($asset->stateChangedBy);
            $self->stateChanged($asset->stateChanged);
        }
        else {
            $asset->setState('trash-limbo');
        }
    }

    # Trash any shortcuts to this asset
    require WebGUI::Asset::Shortcut;
    my $shortcuts 
        = WebGUI::Asset::Shortcut->getShortcutsForAssetId($session, $self->getId, { returnObjects => 1});
    $outputSub->($i18n->get('Purging shortcuts'));
    for my $shortcut ( @$shortcuts ) {
        $shortcut->trash({ outputSub => $outputSub, });
    }

    # Raw database work is more efficient than $asset->update
    my $db = $session->db;
    $db->beginTransaction;
    $outputSub->($i18n->get('Clearing asset tables'));
    $db->write("update asset set state='trash-limbo' where lineage like ?",[$self->get("lineage").'%']);
    $db->write("update asset set state='trash', stateChangedBy=?, stateChanged=? where assetId=?",[$session->user->userId, time(), $self->getId]);
    $db->commit;

    # Update ourselves since we didn't use update()
    $self->state("trash");
    return 1;
}

#-------------------------------------------------------------------

require WebGUI::Workflow::Activity::DeleteExportedFiles;
sub _invokeWorkflowOnExportedFiles {
	my $self = shift;
	my $workflowId = shift;
	my $clearExportedAs = shift;

    if ($clearExportedAs) {
        $self->session->db->write("UPDATE asset SET lastExportedAs = NULL WHERE assetId = ?", [$self->getId]);
    }
    if ($workflowId) {
        my ($lastExportedAs) = $self->get("lastExportedAs");
        my $wfInstance = WebGUI::Workflow::Instance->create($self->session, { workflowId => $workflowId });
        if ($wfInstance) {
            $wfInstance->setScratch(
                WebGUI::Workflow::Activity::DeleteExportedFiles::DELETE_FILES_SCRATCH() =>
                Storable::freeze([ defined($lastExportedAs) ? ($lastExportedAs) : () ])
            );
            $wfInstance->start(1);
        }
        else {
            $self->session->log->warn('The Purge Workflow from the settings has been deleted and cannot be run.');
        }
    }
}

#-------------------------------------------------------------------

=head2 www_manageTrash ( )

Returns an AdminConsole to deal with assets in the Trash. If user isn't in the Turn On Admin group, renders an insufficient privilege page.

=cut

sub www_manageTrash {
	my $self = shift;
	my $ac = WebGUI::AdminConsole->new($self->session,"trash");
	my $i18n = WebGUI::International->new($self->session,"Asset");
	return $self->session->privilege->insufficient() unless ($self->session->user->isInGroup(12));
    $ac->setHelp("trash manage");
    my $header;
    my $limit = 1;
    my $canAdmin = $self->session->user->isInGroup($self->session->setting->get('groupIdAdminTrash'));
    my $systemTrash = $self->session->form->process("systemTrash");
    if ($systemTrash && $canAdmin) {
		$header = $i18n->get(965);
		$ac->addSubmenuItem($self->getUrl('func=manageTrash'), $i18n->get(10,"WebGUI"));
        $limit = undef;
	}
    elsif ( $canAdmin ) {
        $ac->addSubmenuItem($self->getUrl('func=manageTrash;systemTrash=1'), $i18n->get(964));
    }
  	$self->session->style->setCss($self->session->url->extras('assetManager/assetManager.css'));
        $self->session->style->setScript($self->session->url->extras('assetManager/assetManager.js'));
	my $output = "
   <script type=\"text/javascript\">
   //<![CDATA[
     var assetManager = new AssetManager();
         assetManager.AddColumn('".WebGUI::Form::checkbox($self->session,{name=>"checkAllAssetIds", extras=>'onclick="toggleAssetListSelectAll(this.form);"'})."','','center','form');
         assetManager.AddColumn('".$i18n->get("99")."','','left','');
         assetManager.AddColumn('".$i18n->get("type")."','','left','');
         assetManager.AddColumn('".$i18n->get("last updated")."','','center','');
         assetManager.AddColumn('".$i18n->get("size")."','','right','');
         \n";

    # To avoid string escaping issues
    my $json = JSON->new;
    my $amethod = sub {
        my ($method, @args) = @_;
        my $array = $json->encode(\@args);
        $array =~ s/^\[//;
        $array =~ s/\]$//;
        $output .= "assetManager.$method($array);\n";
    };
	foreach my $child (@{$self->getAssetsInTrash($limit)}) {
    		my $title = $child->getTitle;
    		my $plus =$child->getChildCount({includeTrash => 1}) ? "+ " : "&nbsp;&nbsp;&nbsp;&nbsp;";
            $amethod->('AddLine',
                WebGUI::Form::checkbox($self->session, {
                    name=>'assetId',
                    value=>$child->getId
                }),
                qq($plus<a href=").$child->getUrl("op=assetManager")
                .qq(">$title</a>),
			    '<p style="display:inline;vertical-align:middle;"><img src="'
                .$child->getIcon(1)
                .'" style="vertical-align:middle;border-style:none;" alt='
                .$child->getName .'" /></p> ' . $child->getName,
                $self->session->datetime->epochToHuman($child->get("revisionDate")),
                Number::Format::format_bytes($child->get("assetSize"))
            );
            $amethod->('AddLineSortData',
                '', $title, $child->getName,
                $child->get('revisionDate'), $child->get('assetSize')
            );
	}
	$output .= '
            assetManager.AddButton("'.$i18n->get("restore").'","restoreList","manageTrash");
            assetManager.AddButton("'.$i18n->get("purge").'","purgeList","manageTrash");
            assetManager.AddFormHidden({ name:"webguiCsrfToken", value:"'.$self->session->scratch->get('webguiCsrfToken').'"});
            assetManager.AddFormHidden({ name:"systemTrash", value:"'.$systemTrash.'"});
            assetManager.Write();        
            var assetListSelectAllToggle = false;
            function toggleAssetListSelectAll(form) {
                assetListSelectAllToggle = assetListSelectAllToggle ? false : true;
                if (typeof form.assetId.length == "undefined") {
                    form.assetId.checked = assetListSelectAllToggle;
                }
                else {
                    for (var i = 0; i < form.assetId.length; i++)
                        form.assetId[i].checked = assetListSelectAllToggle;
                }
            }
		 //]]>
		</script> <div class="adminConsoleSpacer"> &nbsp;</div>';
	return $ac->render($output, $header);
}

#-------------------------------------------------------------------

=head2 www_purgeList ( )

Purges a piece of content, including all it's revisions, from the system permanently.

Returns insufficient privileges unless the submitted form passes the validToken check.

=cut

sub www_purgeList {
    my $self    = shift;
    my $session = $self->session;
    my $form    = $session->form;
    return $session->privilege->insufficient() unless $session->form->validToken;
    my $method = $form->get('proceed') || 'manageTrash';
    $method .= ';systemTrash=1' if $form->get('systemTrash');
    $self->forkWithStatusPage({
            plugin   => 'ProgressTree',
            title    => 'purge',
            redirect => $self->getUrl("func=$method"),
            method   => 'purgeInFork',
            args     => [ $form->get('assetId') ],
        }
    );
}

#-------------------------------------------------------------------

=head2 www_restoreList ( )

Restores a piece of content from the trash back to it's original location.

=cut

sub www_restoreList {
        my $self = shift;
        foreach my $id ($self->session->form->param("assetId")) {
                my $asset = eval { WebGUI::Asset->newPending($self->session,$id); };
                $asset->restore if $asset->canEdit;
        }
        if ($self->session->form->process("proceed") ne "") {
                my $method = "www_".$self->session->form->process("proceed");
                return $self->$method();
        }
        return $self->www_manageTrash();
}


1;

