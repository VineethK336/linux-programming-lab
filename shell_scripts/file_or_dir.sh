# Shell program that tells whether supplied name is file or directory.
# If it's a file, then the number of lines in it will be displayed.

while [ 0 ]
do
  echo "Enter name: "
  read name
  if [ $name = "exit" ]  # Check if user wants to exit
  then
    echo "Bye! :)"
    break  # break out of the loop
  elif [ -f $name ]  # Checks if it is file
  then
    echo "$name is a file"
    echo -n "No. of lines in $name: "
    wc -l $name | tr -s [:blank:] | cut -d " " -f 2
  elif [ -d $name ]  # Checks if it is directory
  then
    echo "$name is a directory"
  fi
done


# On line 16, wc with -l gives line count and file name. So, we use tr to squeeze
# multiple whitespaces into single whitespace and get only line count using cut.
