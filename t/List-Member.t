BEGIN { $| = 1; print "1..5\n"; }
END {print "not ok 1\n" unless $loaded;}
use List::Member;
our $loaded=1;
print "# Version ".$List::Member::VERSION."\n";
print "ok 1\n";

my $target = 'bar';
my @look_in = ('foo','baz','bar','etc');

print "not " unless member('foo',@look_in) +1;
print "ok 2\n";

print "not " unless member('foo',@look_in) >= 0;
print "ok 3\n";

print "not " unless member('tikkumolam',@look_in) eq nota_member();
print "ok 4\n";

print "not " unless defined member('foo',@look_in);
print "ok 5\n";
