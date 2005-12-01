package WebGUI::Form::RadioList;

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
use base 'WebGUI::Form::List';
use WebGUI::Form::Radio;
use WebGUI::International;
use WebGUI::Session;

=head1 NAME

Package WebGUI::Form::RadioList

=head1 DESCRIPTION

Creates a series of radio button form fields.

=head1 SEE ALSO

This is a subclass of WebGUI::Form::List. Also take a look at WebGUI::Form::Radio as this class creates a list of radio buttons.

=head1 METHODS 

The following methods are specifically available from this class. Check the superclass for additional methods.

=cut

##-------------------------------------------------------------------

=head2 correctValues ( )

Override method from master class since RadioList only supports a single value

=cut

sub correctValues { }


#-------------------------------------------------------------------

=head2 definition ( [ additionalTerms ] )

See the super class for additional details.

=head3 additionalTerms

The following additional parameters have been added via this sub class.

=head4 vertical

Boolean representing whether the checklist should be represented vertically or horizontally. If set to "1" will be displayed vertically. Defaults to "0".

=head4 profileEnabled

Flag that tells the User Profile system that this is a valid form element in a User Profile

=cut

sub definition {
	my $class = shift;
	my $definition = shift || [];
	push(@{$definition}, {
		formName=>{
			defaultValue=>WebGUI::International::get("942","WebGUI")
			},
		vertical=>{
			defaultValue=>0
			},
		profileEnabled=>{
			defaultValue=>1
			},
		});
	return $class->SUPER::definition($definition);
}


#-------------------------------------------------------------------

=head2 toHtml ( )

Renders a series of radio buttons.

=cut

sub toHtml {
	my $self = shift;
	my $output;
	my $alignment = $self->alignmentSeparator;
        my %options;
        tie %options, 'Tie::IxHash';
        %options = $self->orderedHash;
	foreach my $key (keys %options) {
                my $checked = 0;
                if ($self->{value} eq $key) {
                        $checked = 1;
                }
                $output .= WebGUI::Form::Radio->new({
                        name=>$self->{name},
                        value=>$key,
                        extras=>$self->{extras},
                        checked=>$checked
                        })->toHtml;
                $output .= ${$self->{options}}{$key} . $alignment;
        }
        return $output;
}

1;

