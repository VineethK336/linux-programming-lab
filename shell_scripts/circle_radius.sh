# Shell script to find area of a circle

echo "Enter the radius: "
read radius

area=$( echo "3.14 * ($radius * $radius)" | bc )
echo "Area = $area"
