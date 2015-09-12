$\ = "\n";
# This sets the global language variable $\, which is the symbol that ends all
# printed strings.

for (1..100)
# Since we don't specify an index variable, Perl uses the default variable $_
{
    if($_ % 15 == 0)
    {
        print "fizzbuzz";
    }elsif($_ % 3 == 0)
    {
        print "fizz";
    }elsif($_ % 5 == 0)
    {
        print "buzz";
    }else
    {
        print;
# Since we don't specify anything to print, Perl uses the default variable $_
# Notice a theme?
    }
}
