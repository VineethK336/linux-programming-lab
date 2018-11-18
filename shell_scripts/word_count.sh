# Shell script that takes any number of file names as arguments, counts and
# reports the occurances of each word that is present in the first argument file
# on other argument files

echo -n "Enter file names(space separated): "  # -n omits trailing new character
read first_file other_files
words=`cat $first_file`  # Get all the words in first_file
for word in $words
do
  echo -e "\nWord = $word\nCounts:"
  grep -wic $word $other_files  # Print the count in each file
done


# Note: The matching is case in-sensitive
# Tip: Try sample txt files in shell_scripts directory as inputs
# 1. Anything enclosed in backquotes(``) is executed as shell command and the
# result is substituted in that place.
# 2. grep with -c gives the count of occurances of $word in one or more files
# supplied as arguments to it. Here the arguments are in other_files variable.
# -w is to search for whole words & -i for case in-sensitive matching.
