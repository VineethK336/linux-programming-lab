# Awk script to print number of lines in a file that don't contain vowels in them

BEGIN {
print "Number of lines that don't contain vowels"
total = 0
}
{
if ($0 !~ /[aeiouAEIOU]/) {
total = total + 1
print $0
}
}
END {
print "The total lines in the given file that don't contain vowels: ", total
}


# 1. BEGIN and END specify the actions to be performed before & after any lines
# are read.
# 2. $0 corresponds to the entire line
# 3. !~ does a test for "doesn't match"
