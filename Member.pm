package List::Member;

require 5.005_62;
use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(&member);
our $VERSION = '0.01';


sub member {
	my $target = shift;
	for (0..$#_){
		return $_ if $_[$_] eq $target;
	}
	return -1;
}

1;
__END__

=head1 NAME

List::Member - return index of scalar in array, or -1.

=head1 SYNOPSIS

  use List::Member;
  my $target = 'bar';
  my @look_in = ('foo','baz','bar','etc');
  warn "It's a member of the array"
  	if member('bar',@look_in);
  __END__;

=head1 DESCRIPTION

A tiny routine to achieve the same effect as PROLOG's C<member/2>.

Returns the index of supplied scalar in supplied array, or returns -1.

=head2 EXPORT

	member


=head1 AUTHOR

Lee Goddard <lgoddard@cpan.org>

=head1 SEE ALSO

perl(1).

=cut
