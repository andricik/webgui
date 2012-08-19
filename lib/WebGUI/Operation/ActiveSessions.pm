package WebGUI::Operation::ActiveSessions;

#-------------------------------------------------------------------
# WebGUI is Copyright 2001-2012 Plain Black Corporation.
#-------------------------------------------------------------------
# Please read the legal notices (docs/legal.txt) and the license
# (docs/license.txt) that came with this distribution before using
# this software.
#-------------------------------------------------------------------
# http://www.plainblack.com                     info@plainblack.com
#-------------------------------------------------------------------

use strict;
use WebGUI::AdminConsole;
use WebGUI::International;
use WebGUI::Paginator;
use WebGUI::SQL;
use JSON;

=head1 NAME

Package WebGUI::Operations::ActiveSessions

=head1 DESCRIPTION

Operation handler for displaying and killing active sessions.

=cut

#----------------------------------------------------------------------------

=head2 canView ( session [, user] )

Returns true if the given user is allowed to use this operation. user must be
a WebGUI::User object. By default, checks the current user.

=cut

sub canView {
    my $session     = shift;
    my $user        = shift || $session->user;
    return $user->isInGroup( $session->setting->get("groupIdAdminActiveSessions") );
}

#-------------------------------------------------------------------

=head2 www_killSession ( )

This method can be called directly, but is usually called
from www_viewActiveSessions. It ends the active session in
$session->form->process("sid").  Afterwards, it calls www_viewActiveSessions.

=cut

sub www_killSession { #$session->request->method
	my $session = shift;
   my $i18n = WebGUI::International->new($session);
   $session->response->content_type("application/json");
   if ( $session->form->process("sid") eq $session->getId ){
      $session->response->status(304);
      return to_json { header => $i18n->get(108)->{message}, error => $i18n->get(36) };

   }elsif ( canView($session) ){
	   $session->db->write("delete from userSession where sessionId=?",[$session->form->process("sid")]);
	   $session->db->write("delete from userSessionScratch where sessionId=?", [$session->form->process("sid")]);
	   return to_json { }; # json success
   
   }else{
      $session->response->status(403);
      return to_json { header => $i18n->get(35), error => $i18n->get(36) };#return $self->session->style->userStyle($output);
      
   }   

}

#-------------------------------------------------------------------

=head2 www_viewActiveSessions ( )

Display a list of all active user sessions, along with an icon to
delete (kill) each one via www_killSession

=cut

sub www_viewActiveSessions {
   my $session = shift;
   my $i18n = WebGUI::International->new($session);
   $session->response->content_type("application/json");
   if ( canView($session) ){
      my $limit = $session->form->param('iDisplayLength');
      my $echo = $session->form->param('sEcho');
      my $p = WebGUI::Paginator->new($session,$session->url->page('op=viewActiveSessions'));
      my $sqlCommand = q|select users.username,users.userId,userSession.sessionId,userSession.expires,
            userSession.lastPageView,userSession.lastIP from users,userSession where users.userId=userSession.userId
            and users.userId<>1 order by users.username,userSession.lastPageView desc |; # datatables search param sSearch
      if ( $limit ){
        $sqlCommand .= qq| limit $limit|; # sqlInjection WARNING!!!
      }
      $p->setDataByQuery( $sqlCommand );
      my $output = [];
      foreach my $data (@{ $p->getPageData() }) {
         push(@{ $output },{
              username     => $data->{username},
              userId       => $data->{userId}, 
              sessionId    => $data->{sessionId},
              expires      => $session->datetime->epochToHuman($data->{expires}),
              lastPageView => $session->datetime->epochToHuman($data->{lastPageView}),
              lastIP       => $data->{lastIP}
         });
      }
      return to_json {
         iTotalRecords        => $p->getRowCount,
         iTotalDisplayRecords => $limit,
         data                 => $output,
         sEcho                => $echo
      };
   
   }else{
      $session->response->status(403);
      return to_json { header => $i18n->get(35), error => $i18n->get(36) };#return $self->session->style->userStyle($output);
      
   }
}

1;
