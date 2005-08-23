package WebGUI::Form::Interval;

=head1 LEGAL

 -------------------------------------------------------------------
  WebGUI is Copyright 2001-2005 Plain Black Corporation.
 -------------------------------------------------------------------
  Please read the legal notices (docs/legal.txt) and the license
  (docs/license.txt) that came with this distribution before using
  this software.
 -------------------------------------------------------------------
  http://www.plainblack.com                     info@plainblack.com
 -------------------------------------------------------------------

=cut

use strict;
use warnings;
use base qw(WebGUI::Form::Control);
use Tie::IxHash;
use WebGUI::DateTime;
use WebGUI::Form::Hidden;
use WebGUI::Form::Integer;
use WebGUI::Form::SelectList;
use WebGUI::International;
use WebGUI::Session;

=head1 NAME

Package WebGUI::Form::Interval

=head1 DESCRIPTION

Creates an interval (hours, minutes, seconds, etc) selector.

=head1 SEE ALSO

This is a subclass of WebGUI::Form::Control.

=head1 METHODS 

The following methods are specifically available from this class. Check the superclass for additional methods.

=cut

#-------------------------------------------------------------------

=head2 definition ( [ additionalTerms ] )

See the super class for additional details.

=head3 additionalTerms

The following additional parameters have been added via this sub class.

=head4 defaultValue

A time interval in seconds that is used if value is not specified. Defaults to 1.

=cut

sub definition {
	my $class = shift;
	my $definition = shift || [];
	push(@{$definition}, {
		defaultValue=>{
			defaultValue=>1,
			}
		});
	return $class->SUPER::definition($definition);
}


#-------------------------------------------------------------------

=head2 getName ()

Returns the human readable name or type of this form control.

=cut

sub getName {
        return WebGUI::International::get("interval","WebGUI");
}


#-------------------------------------------------------------------

=head2 getValueFromPost ( )

Returns either the interval that was posted (in seconds) or if nothing comes back it returns 0.

=cut

sub getValueFromPost {
	my $self = shift;
	return WebGUI::DateTime::intervalToSeconds($session{cgi}->param($self->{name}."_interval"),$session{cgi}->param($self->{name}."_units")) || 0;
}

#-------------------------------------------------------------------

=head2 toHtml ( )

Renders an interval control.

=cut

sub toHtml {
	my $self = shift;
	my %units;
	tie %units, 'Tie::IxHash';
        %units = ('seconds'=>WebGUI::International::get(704),
                'minutes'=>WebGUI::International::get(705),
                'hours'=>WebGUI::International::get(706),
                'days'=>WebGUI::International::get(700),
                'weeks'=>WebGUI::International::get(701),
                'months'=>WebGUI::International::get(702),
                'years'=>WebGUI::International::get(703));
        my ($interval, $units) = WebGUI::DateTime::secondsToInterval($self->{value});
	# not sure why, but these things need to be defined like this or
	# they fail under some circumstnaces 
	my $cmd = "WebGUI::Form::Integer";
	my $out = $cmd->new(
		name=>$self->{name}."_interval",
		value=>$interval,
		extras=>$self->{extras},
		id=>$self->{id}."_interval",
		)->toHtml;
	$cmd = "WebGUI::Form::SelectList";
	$out .= $cmd->new(
		options=>\%units,
		name=>$self->{name}."_units",
		id=>$self->{id}."_units",
		value=>[$units]
		)->toHtml;
	return $out;
}


#-------------------------------------------------------------------

=head2 toHtmlAsHidden ( )

Returns the field as hidden controls rather than displayable controls.

=cut

sub toHtmlAsHidden {
	my $self = shift;
        my ($interval, $units) = WebGUI::DateTime::secondsToInterval($self->{value});
        return WebGUI::Form::Hidden->new(
                        "name"=>$self->{name}.'_interval',
                        "value"=>$interval
                        )->toHtmlAsHidden
        	.WebGUI::Form::Hidden->new(
                        "name"=>$self->{name}.'_units',
                        "value"=>$units
                        )->toHtmmlAsHidden;
}

1;

