# Shell script to find the factorial of a number

echo "Enter a number"
read a
if [ $a -lt 0 ]  # -le for "strictly less than"
then
  echo "Factorials exist only for non-negative numbers. Please enter a valid input."
elif [ $a -eq 0 ]  # -eq for "equal to"
then
  echo "Factorial of 0 is 1"
else
  fact=1
  for i in $(seq $a)  # seq gives sequence of numbers from 1 to $a with step 1
  do
    fact=$(( $fact * $i ))
  done
  echo "Factorial of $a is $fact"
fi
