# Shell script to delete lines containing a given word in the given file

echo -n "Enter the filename: "  # -n omits trailing new line
read filename
echo -n "Enter the word which shouldn't be present: "
read word
sed -e '/'$word'/d' $filename  # delete the lines containing the word
