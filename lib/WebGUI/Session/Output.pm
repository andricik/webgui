package WebGUI::Session::Output;

=head1 LEGAL

 -------------------------------------------------------------------
  WebGUI is Copyright 2001-2006 Plain Black Corporation.
 -------------------------------------------------------------------
  Please read the legal notices (docs/legal.txt) and the license
  (docs/license.txt) that came with this distribution before using
  this software.
 -------------------------------------------------------------------
  http://www.plainblack.com                     info@plainblack.com
 -------------------------------------------------------------------

=cut

use strict;
use WebGUI::Macro;

=head1 NAME

Package WebGUI::Session::Output

=head1 DESCRIPTION

This class provides a handler for returning output. Through this we can apply filters (like macros), and simple page caching mechanisms.

=head1 SYNOPSIS

 $session->output->print($content);

=head1 METHODS

These methods are available from this package:

=cut


#-------------------------------------------------------------------

=head2 DESTROY ( )

Deconstructor.

=cut

sub DESTROY {
        my $self = shift;
        undef $self;
}



#-------------------------------------------------------------------

=head2 new ( session )

Constructor. 

=head3 session

A reference to the current session.

=cut

sub new {
	my $class = shift;
	my $session = shift;
	bless {_session=>$session}, $class;
}

#-------------------------------------------------------------------

=head2 print ( content ) 

Outputs content to either the web server or standard out, depending on which is available.

=head3 content

The content to output.

=cut

sub print {
	my $self = shift;
	my $content = shift;
	WebGUI::Macro::process($self->session, \$content);
	print $content;
}

#-------------------------------------------------------------------

=head2 session ( )

Returns a reference to the current session.

=cut

sub session {
	my $self = shift;
	return $self->{_session};
}



1;
