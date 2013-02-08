#!/bin/bash
echo "Please input a grade:"
read grade
if [ $grade -gt 100 > /dev/null 2>&1 ]
then
	echo "The grade is no more than 100."
elif [ $grade -lt 60 > /dev/null 2>&1 ]
then
	echo "Failed!"
elif [ $grade -lt 70 > /dev/null 2>&1 ]
then
	echo "Passed!"
elif [ $grade -lt 80 > /dev/null 2>&1 ]
then
	echo "Medium!"
elif [ $grade -lt 90 > /dev/null 2>&1 ]
then
	echo "Good!"
elif [ $grade -le 100 >  /dev/null 2>&1 ]
then
	echo "Excellent!"
else
	echo "lalalalala"
fi
exit 0
