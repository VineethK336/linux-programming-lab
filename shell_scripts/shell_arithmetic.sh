# Shell script to perform arithmetic operations on integers

echo -e "Hello!\nEnter two numbers:"  # -e option for enabling escape sequences
read a b

# Use expr in reverse quotes to evaluate an expression
add=`expr $a + $b`
sub=`expr $a - $b`
mul=`expr $a \* $b`
div=`expr $a / $b`
modulo=`expr $a % $b`

echo -e "Results using expr:\n"
echo -e "Addition: $add\nSubtraction: $sub\nMultiplication: $mul\nDivision: $div"
echo -e "Modulo Division: $modulo\n"

# Same expressions in shell arithmetic
add=$((a + b))
sub=$((a - b))
mul=$((a * b))
div=$((a / b))
modulo=$((a % b))

echo -e "Results using shell arithmetic:\n"
echo -e "Addition: $add\nSubtraction: $sub\nMultiplication: $mul\nDivision: $div"
echo -e "Modulo Division: $modulo\n"
