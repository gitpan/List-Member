package List::Member;

require 5.005_62;
use strict;
use warnings;
use Carp;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(&member);
our $VERSION = '0.02';
our $NEG = undef;


sub member {
	my $target = shift or croak "No target in member/2 ";
	for (0..$#_){
		return $_ if $_[$_] eq $target;
	}
	return $NEG;
}

1;
__END__

=head1 NAME

List::Member - PROLOG's member/2: return index of $x in @y.

=head1 SYNOPSIS

  use List::Member;
  my $target = 'bar';
  my @look_in = ('foo','baz','bar','etc');
  warn "It's a member of the array"
  	if member('bar',@look_in) +1;
  warn "It's a member of the array"
	if member('bar',@look_in) >= 0;
  __END__;

=head1 DESCRIPTION

A tiny routine to achieve the same effect as PROLOG's C<member/2>.

Returns the index of supplied scalar in supplied array, or returns the
value of the package's C<$NEG> scalar.  This can be
over-riden for the case when the target is the same as the default C<-1>.

=head2 EXPORT

	member

=head1 THANKS

	Thanks to Benoit Thillaye du Boulay in France for pointing
	out a bug in the documentation.

=head1 AUTHOR

Lee Goddard <lgoddard@cpan.org>

=head1 SEE ALSO

perl(1).

=cut
