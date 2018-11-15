# Shell script to perform floating point arithmetic

echo -e "Hello!\nEnter two (floating-point)numbers:"  # -e option to interpret escape sequences
read a b

# For performing floating-point arithmetic, we use "bc"
echo -n "Addition: "  # -n option omits trailing new character and makes next echo print on same line
echo "$a + $b" | bc
echo -n "Subtraction: "
echo "$a - $b" | bc
echo -n "Multiplication: "
echo "$a * $b" | bc
echo -n "Division: "
echo "scale=2; $a / $b" | bc

# Scale variable is used by bc only in division
# Scale sets number of digits after decimal without rounding
