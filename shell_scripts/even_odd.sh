# Shell script to find out whether the given number is even or odd

echo "Enter a number: "
read number
rem=`expr $number % 2`

#rem=$(( $number % 2 ))  # without expr

if [ $rem -eq 0 ]  # -eq for equal to
then
  echo "$number is even"
else
  echo "$number is odd"
fi
