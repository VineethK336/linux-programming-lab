# Shell script to list all the directory files in a directory

echo "The directories in the working directory are: "
ls -l . | grep ^d | tr -s [:space:] | cut -d " " -f 9


# 1. ls -l . lists all files in the current directory in long form
# 2. grep ^d matches all the lines starting with 'd' i.e., the directory files
# 3. tr -s [:space:] squeezes multiple occurances of whitespaces into single
# occurance. This is to sanitize the input given to cut.
# 4. cut -d " " -f 9 cuts the input with " " as delimiter and gets the 9th field
