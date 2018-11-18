# Shell script to print all lines between any two given lines(inclusive) in a file

echo -n "Enter the file name: "  # -n omits trailing new line
read filename
echo -n "Enter starting and ending lines in the file: "
read start end
sed -n $start,$end\p $filename | cat  # Prints the specified line numbers


# By default sed prints each line in it's input file. -n supresses this behavior
