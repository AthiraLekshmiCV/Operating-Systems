#/bin/bash

<<COMMENT
The length and breadth of a rectangle and radius of a circle are input through keyboard. 
#Write a script to calculate the area and perimeter of a rectangle and area and 
#circumference of the circle.
COMMENT

read -p "Enter the length of the rectangle in cm:" l
echo -n "Enter the breadth of a rectangle in cm:"
read b
echo -n "Enter the radius of the circle in cm "
read r
perimeter=`expr "scale=2; 2* ($l + $b )"|bc`
area=`expr "scale=2; $l*$b " |bc`
circle_area=`expr "scale=2; 3.14 * $r * $r " |bc`
circumference=`expr "scale=2;2* 3.14 * $r " |bc `

echo "The area of the rectangle is: $area cm-square "
echo "The perimeter of the rectangle is: $perimeter  cm"
echo "The area of the circle is: $circle_area cm-square "
echo "The circumference of the circle is: $circumference  cm"
