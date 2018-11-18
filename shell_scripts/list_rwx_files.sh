# Shell script to list all files in the current directory for which the user
# has read, write and execute permissions

echo "The files for which the user has read, write & execute permissions are:"
ls -l . | grep ^-rwx | tr -s [:blank:] | cut -d " " -f 9

# What did we do?
# 1. List all the files in the current diretory in long form
# 2. Match the 'files' with 'rwx' permissions
# 3. Squeeze multiple spaces into single space (for cut)
# 4. Cut with space as delimiter and get the 9th field (name of the file)

# Note:
# 1. If you have no files with read, write & execute permissions for user, run
#    the following command - chmod u=rwx file_name
# 2. This command will make the user have read, write & execute permissions for
#    file_name.
