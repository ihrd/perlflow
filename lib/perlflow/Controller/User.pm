package Perlflow::Controller::User;

use strict;
use warnings;
use parent 'Catalyst::Controller';

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
    
    
}

sub login : Local {
    my ( $self, $c ) = @_;
    
    if ($c->authenticate_openid) {
        return $c->res->redirect( $c->uri_for('/') );
    }
}

=head1 AUTHOR

Dmitriy Dzema

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
