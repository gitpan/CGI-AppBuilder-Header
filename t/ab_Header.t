use strict;
use warnings;

use Test::More qw(no_plan); 

use CGI::AppBuilder::Header;
my $class = 'CGI::AppBuilder::Header';
my $obj = CGI::AppBuilder::Header->new; 

isa_ok($obj, "CGI::AppBuilder::Header");

my @md = @CGI::AppBuilder::Header::EXPORT_OK;
foreach my $m (@md) {
    ok($obj->can($m), "$class->can('$m')");
}
1;

