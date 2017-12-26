#!C:\Strawberry\perl\bin

use Carp;
#use Test::JSON;
use C::Tokenize;
use JSON::Parse;

use JSON::Repair ':all';

# Print a message.
print "Hello, World!\n";


my $filename = 'input.json';
my $json = ''; 
 
open(FH, '<', $filename) or die $!;
 
while(<FH>){
   $json = $json . $_; 
  # print $_;
}
 
close(FH);

print $json;

my $r = repair_json ($json);

print "$r\n";

# '{"foo":123, "bar":{"baz": "hello"}';


#is_valid_json $json,  '... json is well formed';


