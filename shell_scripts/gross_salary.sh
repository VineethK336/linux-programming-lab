# Shell script to calculate Gross salary of an employee

echo "Enter salary: "
read basic

if [ $basic -lt 3000 ]  # -lt for strictly less than condition
then
  hra=$( echo "scale=2; 20 * $basic / 100" | bc )
  da=$( echo "scale=2; 30 * $basic / 100" | bc )
else
  hra=$( echo "scale=2; 50 * $basic / 100" | bc )
  da=$( echo "scale=2; 50 * $basic / 100" | bc )
fi

gs=$( echo "scale=2; $basic + $hra + $da" | bc )
echo "Gross salary: $gs"
