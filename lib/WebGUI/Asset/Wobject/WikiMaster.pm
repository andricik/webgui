package WebGUI::Asset::Wobject::WikiMaster;

#-------------------------------------------------------------------
# WebGUI is Copyright 2001-2012 Plain Black Corporation.
#-------------------------------------------------------------------
# Please read the legal notices (docs/legal.txt) and the license
# (docs/license.txt) that came with this distribution before using
# this software.
#-------------------------------------------------------------------
# http://www.plainblack.com                     info@plainblack.com
#-------------------------------------------------------------------

use Moose;
use WebGUI::Definition::Asset;
use experimental 'smartmatch';

extends 'WebGUI::Asset::Wobject';

define assetName => ['assetName', 'Asset_WikiMaster'];
define icon      => 'wikiMaster.gif';
define tableName => 'WikiMaster';

property groupToEditPages => (
            fieldType => 'group',
            default   => '2',
            tab       => 'security',
            hoverHelp => ['groupToEditPages hoverHelp', 'Asset_WikiMaster'],
            label     => ['groupToEditPages label', 'Asset_WikiMaster'],
       );

property groupToAdminister => (
            fieldType => 'group',
            default   => '3',
            tab       => 'security',
            hoverHelp => ['groupToAdminister hoverHelp', 'Asset_WikiMaster'],
            label     => ['groupToAdminister label', 'Asset_WikiMaster'],
       );

property richEditor => (
            fieldType => 'selectRichEditor',
            default   => 'PBrichedit000000000001',
            tab       => 'display',
            hoverHelp => ['richEditor hoverHelp', 'Asset_WikiMaster'],
            label     => ['richEditor label', 'Asset_WikiMaster'],
       );

property frontPageTemplateId => (
            fieldType => 'template',
            namespace => 'WikiMaster_front',
            default   => 'WikiFrontTmpl000000001',
            tab       => 'display',
            hoverHelp => ['frontPageTemplateId hoverHelp', 'Asset_WikiMaster'],
            label     => ['frontPageTemplateId label', 'Asset_WikiMaster'],
       );

property pageTemplateId => (
            fieldType => 'template',
            namespace => 'WikiPage',
            default   => 'WikiPageTmpl0000000001',
            tab       => 'display',
            hoverHelp => ['pageTemplateId hoverHelp', 'Asset_WikiMaster'],
            label     => ['pageTemplateId label', 'Asset_WikiMaster'],
       );

property pageHistoryTemplateId => (
            fieldType => 'template',
            namespace => 'WikiPage_pageHistory',
            default   => 'WikiPHTmpl000000000001',
            tab       => 'display',
            hoverHelp => ['pageHistoryTemplateId hoverHelp', 'Asset_WikiMaster'],
            label     => ['pageHistoryTemplateId label', 'Asset_WikiMaster'],
       );

property mostPopularTemplateId => (
            fieldType => 'template',
            namespace => 'WikiMaster_mostPopular',
            default   => 'WikiMPTmpl000000000001',
            tab       => 'display',
            hoverHelp => ['mostPopularTemplateId hoverHelp', 'Asset_WikiMaster'],
            label     => ['mostPopularTemplateId label', 'Asset_WikiMaster'],
       );
property recentChangesTemplateId => (
            fieldType => 'template',
            namespace => 'WikiMaster_recentChanges',
            default   => 'WikiRCTmpl000000000001',
            tab       => 'display',
            hoverHelp => ['recentChangesTemplateId hoverHelp', 'Asset_WikiMaster'],
            label     => ['recentChangesTemplateId label', 'Asset_WikiMaster'],
       );
property byKeywordTemplateId => (
            fieldType => 'template',
            namespace => 'WikiMaster_byKeyword',
            default   => 'WikiKeyword00000000001',
            tab       => 'display',
            hoverHelp => ['byKeywordTemplateId hoverHelp', 'Asset_WikiMaster'],
            label     => ['byKeywordTemplateId label', 'Asset_WikiMaster'],
       );
property searchTemplateId => (
            fieldType => 'template',
            namespace => 'WikiMaster_search',
            default   => 'WikiSearchTmpl00000001',
            tab       => 'display',
            hoverHelp => ['searchTemplateId hoverHelp', 'Asset_WikiMaster'],
            label     => ['searchTemplateId label', 'Asset_WikiMaster'],
       );

property pageEditTemplateId => ( fieldType => 'template',
            namespace => 'WikiPage_edit',
            default   => 'WikiPageEditTmpl000001',
            tab       => 'display',
            hoverHelp => ['pageEditTemplateId hoverHelp', 'Asset_WikiMaster'],
            label     => ['pageEditTemplateId label', 'Asset_WikiMaster'],
       );

property recentChangesCount => (
            fieldType => 'integer',
            default   => 50,
            tab       => 'display',
            hoverHelp => ['recentChangesCount hoverHelp', 'Asset_WikiMaster'],
            label     => ['recentChangesCount label', 'Asset_WikiMaster']
       );
property recentChangesCountFront => (
            fieldType => 'integer',
            default   => 10,
            tab       => 'display',
            hoverHelp => ['recentChangesCountFront hoverHelp', 'Asset_WikiMaster'],
            label     => ['recentChangesCountFront label', 'Asset_WikiMaster'],
       );
property mostPopularCount => (
            fieldType => 'integer',
            default   => 50,
            tab       => 'display',
            hoverHelp => ['mostPopularCount hoverHelp', 'Asset_WikiMaster'],
            label     => ['mostPopularCount label', 'Asset_WikiMaster'],
       );

property mostPopularCountFront => (
            fieldType => 'integer',
            default   => 10,
            tab       => 'display',
            hoverHelp => ['mostPopularCountFront hoverHelp', 'Asset_WikiMaster'],
            label     => ['mostPopularCountFront label', 'Asset_WikiMaster'],
       );
property approvalWorkflow => (
            fieldType => "workflow",
            default   => "pbworkflow000000000003",
            type      => 'WebGUI::VersionTag',
            tab       => 'security',
            label     => ['approval workflow', 'Asset_WikiMaster'],
            hoverHelp => ['approval workflow description', 'Asset_WikiMaster'],
         );    
property thumbnailSize => (
            fieldType => "integer",
            default   => 0,
            tab       => "display",
            label     => ["thumbnail size", 'Asset_WikiMaster'],
            hoverHelp => ["thumbnail size help", 'Asset_WikiMaster']
         );
property maxImageSize => (
            fieldType => "integer",
            default   => 0,
            tab       => "display",
            label     => ["max image size", 'Asset_WikiMaster'],
            hoverHelp => ["max image size help", 'Asset_WikiMaster']
         );
property allowAttachments => (
            fieldType  => "integer",
            default    => 0,
            tab        => "security",
            label      => ["allow attachments", 'Asset_WikiMaster'],
            hoverHelp  => ["allow attachments help", 'Asset_WikiMaster'],
         );
property useContentFilter => (
            fieldType => "yesNo",
            default   => 1,
            tab       => 'display',
            label     => ['content filter', 'Asset_WikiMaster'],
            hoverHelp => ['content filter description', 'Asset_WikiMaster'],
         );
property filterCode => (
            fieldType => "filterContent",
            default   => 'javascript',
            tab       => 'security',
            label     => ['filter code', 'Asset_WikiMaster'],
            hoverHelp => ['filter code description', 'Asset_WikiMaster'],
         );
property topLevelKeywords => (
            fieldType => "keywords",
            default   => '',
            tab       => 'properties',
            label     => ['top level keywords', 'Asset_WikiMaster'],
            hoverHelp => ['top level keywords description', 'Asset_WikiMaster'],
         );

with 'WebGUI::Role::Asset::Subscribable';
with 'WebGUI::Role::Asset::RssFeed';

use WebGUI::International;
use HTML::Parser;
use URI::Escape;
use WebGUI::Form;
use WebGUI::Search;
use Clone qw/clone/;

#-------------------------------------------------------------------

=head2 appendFeaturedPageVars ( var, asset )

Append the template variables to C<var> for the featured page C<asset>. Returns
the C<var> for convenience.

=cut

sub appendFeaturedPageVars {
    my ( $self, $var, $asset ) = @_;
    my $assetVar = $asset->getTemplateVars;
    for my $key ( keys %{$assetVar} ) {
        $var->{ 'featured_' . $key } = $assetVar->{$key};
    }
    return $var;
}

#-------------------------------------------------------------------

=head2 appendKeywordPageVars ( var )

Append the template variables to C<var> for keyword (category) pages.

=cut

sub appendKeywordPageVars {
    my ( $self, $var ) = @_;
    my $topKeywords    = $self->getTopLevelKeywordsList;
    my $keywordHierarchy  = $self->getKeywordHierarchy( $topKeywords, );
    $var->{keywords_loop} = $self->getKeywordVariables( $keywordHierarchy );
    return $var;
}

#-------------------------------------------------------------------


=head2 appendMostPopular ($var, [ $limit ])

=head3 $var

A hash reference of template variables.  An array reference containing the most popular wiki pages
in order of popularity will be appended to it.

=head3 $limit

If passed in, this will override the mostPopularCount set in the object.

=cut

sub appendMostPopular {
    my $self  = shift;
    my $var   = shift;
    my $limit = shift || $self->get("mostPopularCount");
    my $assetIter = $self->getLineageIterator(["children"],{limit=>$limit, includeOnlyClasses=>["WebGUI::Asset::WikiPage"], joinClass => 'WebGUI::Asset::WikiPage', orderByClause => 'WikiPage.views DESC'});
    while ( 1 ) {
        my $asset;
        eval { $asset = $assetIter->() };
        if ( my $x = WebGUI::Error->caught('WebGUI::Error::ObjectNotFound') ) {
            $self->session->log->error($x->full_message);
            next;
        }
        last unless $asset;
			push(@{$var->{mostPopular}}, {
				title=>$asset->getTitle,
				url=>$asset->getUrl,
				});
	}
}

#-------------------------------------------------------------------

=head2 appendRecentChanges ( $var [, $limit ] )

=head3 $var

A hash reference of template variables.  Template variables will be appended
to the hash ref.

=head3 $limit

If passed in, this will override the mostChangesCount set in the object.

=cut

sub appendRecentChanges {
	my $self = shift;
	my $var = shift;
	my $limit = shift || $self->recentChangesCount || 50;
	my $revisions = $self->session->db->read("select asset.assetId, assetData.revisionDate
		from asset left join assetData using (assetId) where asset.parentId=? and asset.className
		like ? and status='approved' order by assetData.revisionDate desc limit ?", [$self->getId, 
		"WebGUI::Asset::WikiPage%", $limit]);
	while (my ($id, $version) = $revisions->array) {
		my $asset = WebGUI::Asset->newById($self->session, $id, $version);
		unless (defined $asset) {
			$self->session->log->error("Asset $id $version could not be instanciated.");
			next;
		}
		my $user = WebGUI::User->new($self->session, $asset->actionTakenBy);
		my $specialAction = '';
		my $isAvailable = 1;
		# no need to i18n cuz the other actions aren't
		if ($asset->state =~ m/trash/) {
			$isAvailable = 0;
			$specialAction = 'Deleted';
		}
		elsif ($asset->state =~ m/clipboard/) {
			$isAvailable = 0;
			$specialAction = 'Cut';
		}
		push(@{$var->{recentChanges}}, {
			title=>$asset->getTitle,
			url=>$asset->getUrl,
			restoreUrl=>$asset->getUrl("func=restoreWikiPage"),
			actionTaken=>$specialAction || $asset->actionTaken,
			username=>$user->username,
			date=>$self->session->datetime->epochToHuman($asset->revisionDate),
			isAvailable=>$isAvailable,
            assetId=>$id,
			});
	}
}

#-------------------------------------------------------------------

=head2 appendSearchBoxVars  ($var, $queryText)

Appends template variables for creating a search box to search the wiki.

=head3 $var

A hash reference of template variables.  The search box variables will be appended to this.

=head3 $queryText

Default value for the search box.

=cut

sub appendSearchBoxVars {
	my $self = shift;
	my $var = shift;
	my $queryText = shift;
	my $submitText = WebGUI::International->new($self->session, 'Asset_WikiMaster')->get('searchLabel');
    use WebGUI::Form::Hidden;
    use WebGUI::Form::Text;
    use WebGUI::Form::Submit;
	$var->{'searchFormHeader'} = join '',
	    (WebGUI::Form::formHeader($self->session, { action => $self->getUrl, method => 'GET', }),
	     WebGUI::Form::Hidden->new($self->session, { name => 'func', value => 'search' })->toHtml);
	$var->{'searchQuery'} = WebGUI::Form::Text->new($self->session, { name => 'query', value => $queryText })->toHtml;
	$var->{'searchSubmit'} = WebGUI::Form::Submit->new($self->session, { value => $submitText })->toHtml;
	$var->{'searchFormFooter'} = WebGUI::Form::formFooter($self->session);
	$var->{'canAddPages'} = $self->canEditPages();
	return $self;
}

#-------------------------------------------------------------------

=head2 autolinkHtml ($html, [options])

Scan HTML for words and phrases that match wiki titles, and automatically
link them to those wiki pages.  Returns the modified HTML.

=head3 $html

The HTML to scan.

=head3 options

Either a hashref, or a hash of options.

=head4 skipTitles

An array reference of titles that should not be autolinked.

=cut

sub autolinkHtml {
	my $self = shift;
	my $html = shift;
    # opts is always the last parameter, and a hash ref
    my %opts = ref $_[-1] eq 'HASH' ? %{pop @_} : ();
    $opts{skipTitles} ||= [];

    # LC all the skip titles once, for efficiency
    my @skipTitles = map { lc $_ } @{ $opts{skipTitles} };
    # TODO: ignore caching for now, but maybe do it later.
    # This query returns multiple entries for each asset, so we order by revisionDate and count on the hash to only have the
    # latest version.
    my %mapping = $self->session->db->buildHash("SELECT LOWER(d.title), d.url FROM asset AS i INNER JOIN assetData AS d ON i.assetId = d.assetId WHERE i.parentId = ? and className='WebGUI::Asset::WikiPage' and i.state='published' and d.status='approved' order by d.revisionDate ASC", [$self->getId]);
    TITLE: foreach my $title (keys %mapping) {
        my $url = delete $mapping{$title};
        next TITLE if $title ~~ @skipTitles;
        $mapping{$title} = $self->session->url->gateway($url);
    }   

	return $html unless %mapping;
    # sort by length so it prefers matching longer titles 
	my $matchString = join('|', map{quotemeta} sort {length($b) <=> length($a)} keys %mapping);
    my $regexp = qr/($matchString)/i;
	my @acc = ();
	my $in_a = 0;
	my $p = HTML::Parser->new;
	$p->case_sensitive(1);
	$p->marked_sections(1);
	$p->unbroken_text(1);
	$p->handler(start => sub { push @acc, $_[2]; if ($_[0] eq 'a') { $in_a++ } },
		    'tagname, attr, text');
	$p->handler(end => sub { push @acc, $_[2]; if ($_[0] eq 'a') { $in_a-- } },
		    'tagname, attr, text');
	$p->handler(text => sub {
			    my $text = $_[0];
			    unless ($in_a) {
                    $text =~ s{\&\#39\;}{\'}xms; # html entities for ' created by rich editor
                    $text =~ s{$regexp}{'<a href="' . $mapping{lc $1} . '">' . $1 . '</a>'}xmseg;
			    }
			    push @acc, $text;
		    }, 'text');
	$p->handler(default => sub { push @acc, $_[0] }, 'text');
	$p->parse($html);
	$p->eof;
	return join '', @acc;
}

#-------------------------------------------------------------------

=head2 canAdminister 

Returns true if the current user is in the groupToAdminister group, or the user can edit
this WikiMaster due to groupIdEdit or ownerUserId.

=cut

sub canAdminister {
	my $self = shift;
	return $self->session->user->isInGroup($self->groupToAdminister) || $self->WebGUI::Asset::Wobject::canEdit;
}

#-------------------------------------------------------------------

=head2 canEdit ( )

Overriding canEdit method to check permissions correctly when someone is adding a wikipage.

=cut

around canEdit => sub {
    my $orig = shift;
    my $self = shift;
    my $form      = $self->session->form;
    my $addNew    = $form->process("func"              ) eq "add";
    my $editSave  = $form->process("assetId"           ) eq "new"
                 && $form->process("func"              ) eq "addSave"
                 && $form->process("className","className" ) eq "WebGUI::Asset::WikiPage";
    my $canEdit = ( ($addNew || $editSave) && $self->canEditPages )
        || $self->$orig(@_);
    return $canEdit;
};

#-------------------------------------------------------------------

=head2 canEditPages 

Returns true is the current user is in the group that can edit pages, or if
they can administer the wiki (canAdminister).

=cut

sub canEditPages {
	my $self = shift;
	return $self->session->user->isInGroup($self->groupToEditPages) || $self->canAdminister;
}

#-------------------------------------------------------------------

=head2 deleteSubKeywords ( $keyword )

Delete all keywords that are associated with a particular keyword for this wiki.

=head3 $keyword

The main keyword to key off of.

=cut

sub deleteSubKeywords {
    my ( $self, $keyword ) = @_;
    return $self->session->db->write('delete from WikiMasterKeywords where assetId=? and keyword=?', [$self->getId, $keyword]);
}

#-------------------------------------------------------------------

=head2 getFeaturedPageIds ( )

Get the asset IDs of the pages that are marked as Featured.

=cut

sub getFeaturedPageIds {
    my ( $self ) = @_;

    my $assetIds    = $self->getLineage( ['children'], {
        joinClass       => 'WebGUI::Asset::WikiPage',
        whereClause     => 'isFeatured = 1',
    } );
    
    return $assetIds;
}

#-------------------------------------------------------------------

=head2 getKeywordHierarchy ( $keywords, $seen )

Starting with the top level keywords, return the hierarchy of keywords as a recursive arrayref of hashrefs.
The traversal is left-most, depth first.

The hierarchy data structure that looks like this:

    [
        {
            keyword => 'keyword', # same as the keyword, since this is a keyword (category) page
            url     => 'url',     # url from the keyword page, via getUrl so it contains the gateway URL
            children => [         # Array reference of sub-categories referenced by this category
                {                 # If there are no children, this key/value pair will not be present
                    ...
                }
            ],
            descendants => 25,    # The total number of wiki pages that this keyword, and any other sub-keywords
                                  # of this keyword, refer to.
        }
    ]

=head3 $keywords

An array reference of keywords.  If this is blank, then it will use the top level keywords from
itself as a default.

=head3 $seen

A hash reference that keeps track of which keywords have already been seen.  This prevents
infinite loops from happening during the traversal.

=cut

sub getKeywordHierarchy {
    my ( $self, $keywords, $seen ) = @_;
    my $session     = $self->session;
    my $hierarchy   = [];
    $keywords     ||= $self->getTopLevelKeywordsList;
    $seen         ||= {};
    my $assetKeyword = WebGUI::Keyword->new($session);
    KEYWORD: foreach my $keyword (sort @{ $keywords }) {
        my $datum = {
            title       => $keyword,  ##Note, same as keyword
            url         => $self->getUrl('func=byKeyword;keyword='.$keyword),
            descendants => scalar @{ $assetKeyword->getMatchingAssets( {
                                        startAsset => $self,
                                        keyword    => $keyword,
                                        sortOrder  => 'Alphabetically',
                                  }) },
        };
        ##Prevent recursion if seen again
        if (! $seen->{$keyword}++) {
            ##Replace this with a call to getSubKeywords.
            my $children =  $self->getKeywordHierarchy($self->getSubKeywords($keyword), $seen, );
            if (@{ $children } ) {
                foreach my $child (@{ $children }) {
                    $datum->{descendants} += $child->{descendants};
                }
                $datum->{children} = $children;
            }
        }
        push @{ $hierarchy }, $datum;
    }
    return $hierarchy;
}

#-------------------------------------------------------------------

=head2 getSubKeywords ( $keyword )

Return all keywords that are associated with a particular keyword for this wiki.

=head3 $keyword

The main keyword to key off of.

=cut

sub getSubKeywords {
    my ( $self, $keyword ) = @_;
    return $self->session->db->buildArrayRef(
        'select subKeyword from WikiMasterKeywords where assetId=? and keyword=?',
        [$self->getId, $keyword]
    );
}

#-------------------------------------------------------------------

=head2 getKeywordVariables ( $hierarchy, $level )

Take a data structure representing a hierarchy of keywords, and append template variables
to them similar to a Navigation so you can build useful things with them.

=head3 $hierarchy

A data structure similar to that produced by getKeywordHierarchy

=head3 $level

The current level in any part of the hierarchy.

=cut

sub getKeywordVariables {
    my ( $self, $hierarchy, $level ) = @_;
    $level ||= 0;
    my $variables = [];

    KEYWORD: foreach my $member (@{ $hierarchy }) {
        my $varBlock             = clone $member;
        $varBlock->{level}       = $level;
        $varBlock->{isTopLevel}  = $level == 0;
        $varBlock->{indent_loop} = [ map { { indent => $_ } } 1..$level ];
        delete $varBlock->{children};
        push @{$variables}, $varBlock;
        if ( exists $member->{children} ) {
            push @{$variables}, @{ $self->getKeywordVariables($member->{children}, $level+1) };
        }
    }
    return $variables;
}

#-------------------------------------------------------------------

=head2 getRssFeedItems ()

Returns an array reference of hash references. Each hash reference has a title,
description, link, and date field. The date field can be either an epoch date, an RFC 1123
date, or a ISO date in the format of YYYY-MM-DD HH:MM::SS. Optionally specify an
author, and a guid field.

=cut

sub getRssFeedItems {
    my $self        = shift;
    my $vars = {};
    $self->appendRecentChanges( $vars, $self->itemsPerFeed );
    my $var = [];
    foreach my $item ( @{ $vars->{recentChanges} } ) {
        my $asset       = WebGUI::Asset->newById( $self->session, $item->{assetId} );
        push @{ $var }, {
            'link'          => $asset->getUrl,
            'guid'          => $item->{ 'assetId' } . $asset->revisionDate,
            'title'         => $asset->getTitle,
            'description'   => $item->{ 'actionTaken' },
            'date'          => $item->{ 'date' },
            'author'        => $item->{ 'username' },
        };
    }
    
    return $var;
}

#----------------------------------------------------------------------------

=head2 getTemplateVars ( )

Get the common template variables for all views of the wiki.

=cut

sub getTemplateVars {
    my ( $self ) = @_;
    my $i18n    = WebGUI::International->new($self->session, "Asset_WikiMaster");
    my $var     = { %{$self->get},
        url                 => $self->getUrl,
        searchLabel         => $i18n->get("searchLabel"),	
        mostPopularUrl      => $self->getUrl("func=mostPopular"),
        mostPopularLabel    => $i18n->get("mostPopularLabel"),
        addPageLabel        => $i18n->get("addPageLabel"),
        addPageUrl          => $self->getUrl("func=add;className=WebGUI::Asset::WikiPage"),
        recentChangesUrl    => $self->getUrl("func=recentChanges"),
        recentChangesLabel  => $i18n->get("recentChangesLabel"),
        restoreLabel        => $i18n->get("restoreLabel"),
        canAdminister       => $self->canAdminister,
        isSubscribed        => $self->isSubscribed,
        subscribeUrl        => $self->getSubscribeUrl,
        unsubscribeUrl      => $self->getUnsubscribeUrl,
    };
    
    return $var;
}

#----------------------------------------------------------------------------

=head2 getTopLevelKeywordsList ( )

Return the top level keywords as an array reference.

=cut

sub getTopLevelKeywordsList {
    my ( $self ) = @_;
    return WebGUI::Keyword::string2list($self->get('topLevelKeywords'));
}

#-------------------------------------------------------------------

=head2 prepareView 

Prepare the front page template.

=cut

sub prepareView {
	my $self = shift;
	$self->next::method;
	$self->{_frontPageTemplate} =
	    WebGUI::Asset::Template->newById($self->session, $self->frontPageTemplateId);
    if (!$self->{_frontPageTemplate}) {
        WebGUI::Error::ObjectNotFound::Template->throw(
            error      => qq{Template not found},
            templateId => $self->frontPageTemplateId,
            assetId    => $self->getId,
        );
    }
	$self->{_frontPageTemplate}->prepare;
}

#-------------------------------------------------------------------

=head2 processEditForm 

Extend the master method to propagate view and edit permissions down to the wiki pages.

=cut

override processEditForm => sub {
	my $self = shift;
	my $groupsChanged =
	    (($self->session->form->process('groupIdView') ne $self->groupIdView)
	     or ($self->session->form->process('groupIdEdit') ne $self->groupIdEdit));
	my $ret = super();
	if ($groupsChanged) {
        # XXX Should this do descendants for WikiPage attachments?
        my $childIter = $self->getLineageIterator(['children']);
        while ( 1 ) {
            my $child;
            eval { $child = $childIter->() };
            if ( my $x = WebGUI::Error->caught('WebGUI::Error::ObjectNotFound') ) {
                $self->session->log->error($x->full_message);
                next;
            }
            last unless $child;
			$child->update({
                groupIdView => $self->get('groupIdView'),
                groupIdEdit => $self->get('groupIdEdit')
            });
		}
	}
	return $ret;
};

#-------------------------------------------------------------------

=head2 purge 

Extend the master method to delete all keyword entries.

=cut

##Using around due to the plugin
around purge => sub {
    my $orig = shift;
	my $self = shift;
    $self->session->db->write('delete from WikiMasterKeywords where assetId=?',[$self->getId]);
    return $self->$orig(@_);
};

#-------------------------------------------------------------------

=head2 setSubKeywords ( $keyword, @keywords )

Store the set of keywords for this WikiMaster in the db.  Returns true.

=head3 $keyword

The keyword that gets the new keywords.

=head3 @keywords

The new set of keywords.

=cut

sub setSubKeywords {
    my ( $self, $keyword, @subKeywords ) = @_;
    $self->deleteSubKeywords($keyword);
    my $stuffIt = $self->session->db->prepare('insert into WikiMasterKeywords (assetId, keyword, subKeyword) values (?,?,?)');
    KEYWORD: foreach my $subKeyword (@subKeywords) {
        next unless $keyword;
        $stuffIt->execute([$self->getId, $keyword, $subKeyword]);
    }
    $stuffIt->finish;
    return 1;
}

#-------------------------------------------------------------------

=head2 shouldSkipNotification ( )

WikiMasters do not send notification

=cut

sub shouldSkipNotification {
    my ( $self ) = @_;
    return 1;
}

#-------------------------------------------------------------------

=head2 view 

Render the front page of the wiki.

=cut

sub view {
	my $self = shift;
    my $session = $self->session;
        my $var = $self->getTemplateVars;
        $var->{ description     } = $self->autolinkHtml( $var->{ description } );
        $var->{ keywordCloud } 
            = WebGUI::Keyword->new($self->session)->generateCloud({
                startAsset=>$self,
                displayFunc=>"byKeyword",
            });
	my $template = $self->{_frontPageTemplate};

    # Get a random featured page
    my $featuredIds = $self->getFeaturedPageIds;

    if( @$featuredIds ) {
        # it's possible for a WikiMaster not to have any WikiPage featured; it's also possible for any to not render
        my $featuredId  = $featuredIds->[ int( rand @$featuredIds ) - 1 ]; 
        if( $featuredId ) {
            my $featured    = eval { WebGUI::Asset->newById( $session, $featuredId ) };
            if ( ! Exception::Class->caught() ) {
                $self->appendFeaturedPageVars( $var, $featured );
            }
        }
    }

	$self->appendSearchBoxVars($var);
	$self->appendRecentChanges($var, $self->recentChangesCountFront);
	$self->appendMostPopular($var, $self->mostPopularCountFront);
	$self->appendKeywordPageVars($var);
	return $self->processTemplate($var, undef, $template);
}


#-------------------------------------------------------------------

=head2 www_byKeyword 

Return search results that match the keyword from the form variable C<keyword>.

=cut

sub www_byKeyword {
    my $self    = shift;
	my $check   = $self->checkView;
	return $self->session->privilege->noAccess() unless $self->canView;
    my $session = $self->session;
    my $keyword = $session->form->process("keyword");

    my $p = WebGUI::Keyword->new($session)->getMatchingAssets({
        startAsset      => $self,
        keyword         => $keyword,   
        usePaginator    => 1,
    });
    $p->setBaseUrl($self->getUrl("func=byKeyword;keyword=".$keyword));

    my @pages  = ();
    foreach my $assetData (@{$p->getPageData}) {
        my $asset = WebGUI::Asset->newById($self->session, $assetData->{assetId});
        next unless defined $asset;
        push(@pages, {
            title    => $asset->getTitle,
            url      => $asset->getUrl,
            synopsis => $asset->get('synopsis'),
            });
    }
    @pages = sort { lc($a->{title}) cmp lc($b->{title}) } @pages;
    my $var = {
        keyword          => $keyword,
        pagesLoop        => \@pages,
        canAdminister    => $self->canAdminister,
		recentChangesUrl => $self->getUrl("func=recentChanges"),
		mostPopularUrl   => $self->getUrl("func=mostPopular"),
		wikiHomeUrl      => $self->getUrl,
    };
    $p->appendTemplateVars($var);

    my $subKeywords       = $self->getSubKeywords($keyword);
    my $keywordHierarchy  = $self->getKeywordHierarchy($subKeywords);
    $var->{keywords_loop} = $self->getKeywordVariables($keywordHierarchy);

    if ($var->{canAdminister}) {
        $var->{formHeader}  = WebGUI::Form::formHeader($session, {action => $self->getUrl})
                            . WebGUI::Form::hidden($session, { name => 'func',    value => 'subKeywordSave',})
                            . WebGUI::Form::hidden($session, { name => 'keyword', value => $keyword,});
        my $subKeywords = join ', ', @{ $self->getSubKeywords($keyword) };
        $var->{keywordForm} = WebGUI::Form::keywords($session, {
                                                       name  => 'subKeywords',
                                                       value => $session->form->get('subKeywords') || $subKeywords,
                                                       });
        $var->{submitForm} = WebGUI::Form::submit($session, {});
        $var->{formFooter} = WebGUI::Form::formFooter($session);
    }
	return $self->processStyle($self->processTemplate($var, $self->get('byKeywordTemplateId')));
}


#-------------------------------------------------------------------

=head2 www_mostPopular 

Render a templated page that lists the most popular wiki pages.

=cut

sub www_mostPopular {
	my $self = shift;
	my $i18n = WebGUI::International->new($self->session, "Asset_WikiMaster");
	my $var = {
		title => $i18n->get('mostPopularLabel'),
		recentChangesUrl=>$self->getUrl("func=recentChanges"),
		recentChangesLabel=>$i18n->get("recentChangesLabel"),
		wikiHomeLabel=>$i18n->get("wikiHomeLabel"),
		searchLabel=>$i18n->get("searchLabel"),	
		searchUrl=>$self->getUrl("func=search"),
		wikiHomeUrl=>$self->getUrl,
		};
	$self->appendMostPopular($var);
	return $self->processStyle($self->processTemplate($var, $self->mostPopularTemplateId));
}

#-------------------------------------------------------------------

=head2 www_recentChanges 

Render a templated page that shows the most recently changed wiki pages.

=cut

sub www_recentChanges {
	my $self = shift;
	my $i18n = WebGUI::International->new($self->session, "Asset_WikiMaster");
	my $var = {
		title => $i18n->get('recentChangesLabel'),
		wikiHomeLabel=>$i18n->get("wikiHomeLabel"),
		searchLabel=>$i18n->get("searchLabel"),	
		searchUrl=>$self->getUrl("func=search"),
		mostPopularUrl=>$self->getUrl("func=mostPopular"),
		mostPopularLabel=>$i18n->get("mostPopularLabel"),
		restoreLabel => $i18n->get("restoreLabel"),
		canAdminister => $self->canAdminister,
		wikiHomeUrl=>$self->getUrl,
		};
	$self->appendRecentChanges($var);
	return $self->processStyle($self->processTemplate($var, $self->recentChangesTemplateId));
}

#-------------------------------------------------------------------

=head2 www_search 

Render a search form and process the contents, returning the results.

=cut

sub www_search {
	my $self = shift;
	my $check = $self->checkView;
	return $self->session->privilege->noAccess() unless $self->canView;
	my $i18n = WebGUI::International->new($self->session, "Asset_WikiMaster");
	my $queryString = $self->session->form->process('query', 'text');
	my $var = {
		resultsLabel=>$i18n->get("resultsLabel"),
		notWhatYouWanted=>$i18n->get("notWhatYouWantedLabel"),
		nothingFoundLabel=>$i18n->get("nothingFoundLabel"),
		addPageLabel=>$i18n->get("addPageLabel"),
		wikiHomeLabel=>$i18n->get("wikiHomeLabel"),
		searchLabel=>$i18n->get("searchLabel"),	
		recentChangesUrl=>$self->getUrl("func=recentChanges"),
		recentChangesLabel=>$i18n->get("recentChangesLabel"),
		mostPopularUrl=>$self->getUrl("func=mostPopular"),
		mostPopularLabel=>$i18n->get("mostPopularLabel"),
		wikiHomeUrl=>$self->getUrl,
		addPageUrl=>$self->getUrl("func=add;className=WebGUI::Asset::WikiPage;title=".$self->session->url->escape($queryString)),
		};
	$self->appendSearchBoxVars($var, $queryString);
	if (length $queryString) {
		my $search = WebGUI::Search->new($self->session);
		$search->search({ keywords => $queryString,
				  lineage => [$self->lineage],
				  classes => ['WebGUI::Asset::WikiPage'] });
		my $rs = $search->getPaginatorResultSet($self->getUrl("func=search;query=".$queryString));
		$rs->appendTemplateVars($var);
		my @results = ();
		foreach my $row (@{$rs->getPageData}) {
			$row->{url} = $self->session->url->gateway($row->{url});
			push @results, $row;
		}
		$var->{'searchResults'} = \@results;
		$var->{'performSearch'} = 1;
	}
	return $self->processStyle($self->processTemplate($var, $self->searchTemplateId));
}

#-------------------------------------------------------------------

=head2 www_subKeywordSave 

Process the form from www_byKeyword and update the subkeywords for a keyword in this wiki.

=cut

sub www_subKeywordSave {
	my $self = shift;
    my $form = $self->session->form;

    my $subKeywords = $form->process('subKeywords', 'keywords');
    my $keyword     = $form->process('keyword');
    my @subKeywords = @{ WebGUI::Keyword::string2list($subKeywords) };
    $self->setSubKeywords($keyword, @subKeywords);

	return $self->www_byKeyword;
}

__PACKAGE__->meta->make_immutable;
1;
