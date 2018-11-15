# Shell script to count the number of lines, words and characters in a file

echo "Enter a file name:"
read filename

echo -n "Number of lines, words and characters in $filename are: "  # -n option omits trailing new character
wc $filename | tr -s [:blank:] | cut -d " " -f 2-4

# tr -s [:blank:] squeezes multiple occurances of whitespace characters into one occurance.
