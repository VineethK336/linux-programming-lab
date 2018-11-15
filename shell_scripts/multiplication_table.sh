# Shell script to print multiplication table of a number 😂

echo "Enter a number: "
read number

i=1
while [ $i -le 10 ]  # -le for less than or equal to
do
  result=$(( $number * $i ))  # You can also use expr
  echo "$number * $i = $result"
  i=$(( $i + 1 ))
done
