package WebGUI::Operation::Package;

#-------------------------------------------------------------------
# WebGUI is Copyright 2001-2015 Plain Black Corporation.
#-------------------------------------------------------------------
# Please read the legal notices (docs/legal.txt) and the license
# (docs/license.txt) that came with this distribution before using
# this software.
#-------------------------------------------------------------------
# http://www.plainblack.com                     info@plainblack.com
#-------------------------------------------------------------------

use strict qw(vars subs);
use WebGUI::Content::Account;
use WebGUI::International;
use WebGUI::ProfileField;
use WebGUI::User;

=head1 NAME

Package WebGUI::Operation::Package

=head1 DESCRIPTION

Operational handler for listing wgpkg style packages with links to download them.

=head1 METHODS

These methods are available from this package:

=cut

#-------------------------------------------------------------------

=head2 www_listPackages( session )



=head3 session

A reference to the current session.

=cut

sub www_listPackages {
    my $session  = shift;

    my $i18n   = WebGUI::International->new( $session, "Asset" );
    my $output = '<h3>Download Package</h3>';

    ## Packages
    $output .= '<div class="functionPane"><fieldset> <legend>'.$i18n->get("packages").'</legend>';
    foreach my $asset (@{ WebGUI::Asset::getPackageList($session) }) {
            $output .= '<p style="display:inline;vertical-align:middle;"><img src="'.$asset->getIcon(1).'" alt="'.$asset->getName.'" style="vertical-align:middle;border: 0px;" /></p>'
                    # '<a href="'.$asset->getUrl("func=deployPackage;assetId=".$asset->getId.";proceed=manageAssets").'">'.$asset->getTitle.'</a> ' # deploy links are current in the New Content->Package accordion tab
                    # .$session->icon->edit("func=edit;proceed=manageAssets",$asset->get("url"))
                    . $session->icon->export("func=exportPackage",$asset->get("url")) . ' '
                    . '<a href="' . $asset->getUrl("func=exportPackage"). '">' . $asset->getTitle. '</a> '  
                    .'<br />';
    }

    if( $session->url->getRequestedUrl ) {
        my $currentAsset = WebGUI::Asset->newByUrl( $session );
        if( $currentAsset ) {
            $output .= '<br />' 
                . "Import under " . $currentAsset->title . ' ' . $currentAsset->getUrl . "<br>\n"
                . WebGUI::Form::formHeader($session, {action=>$currentAsset->getUrl})
                . WebGUI::Form::hidden($session, {name=>"func", value=>"importPackage"})
                . '<div><input type="file" name="packageFile" size="30" style="font-size: 10px;" /></div>'
                . '<div style="font-size: 10px">'
                . WebGUI::Form::checkbox($session, { label => $i18n->get('clear package flag'), checked => 0, name => 'clearPackageFlag', value => 1 })
                . '<br />'
                . WebGUI::Form::checkbox($session, { label => $i18n->get('inherit parent permissions'), checked => 1, name => 'inheritPermissions', value => 1 })
                . ' &nbsp; ' .  WebGUI::Form::submit($session, { value=>$i18n->get("import"), 'extras' => ' ' })
                . '</div>'      
                . WebGUI::Form::formFooter($session)
                ;
        }
    }

    $output .= ' </fieldset></div>';


    return WebGUI::AdminConsole->new($session)->render($output, 'packages');

}


1;
