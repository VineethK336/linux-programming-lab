# Shell script print output in different formats

echo -e "\033[1m This is in bold \033[0m"  # Use -e to interpret escape sequences
echo -e "\033[4m This is underlined \033[0m"
echo -e "\033[5m This is blinking \033[0m"
echo -e "\033[7m This is highlighted \033[0m"

# \033[0m - for normal text style
# Use \033[0m at the end, otherwise it will apply the style your terminal too
