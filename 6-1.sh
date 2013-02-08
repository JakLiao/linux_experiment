#!/bin/bash
until [ $option = "q" -o $option = "Q" > /dev/null 2>&1 ]
do
echo -e "\n"
echo "Use one of the following options:"
echo "P:To display current directory"
echo "S:To display the name of runing file"
echo "D:To display today's date and present time"
echo "L:To see the listing of files in your present working directory"
echo "W:To see who is logged in "
echo "Q:To quit this program"
echo "Enter your option and hit:"
read option
case $option in 
P|p) 
	pwd 
	;;
S|s)
	echo $0
	;;
D|d)
	date
	;;
L|l)
	ls
	;;
W|w)
	who
	;;
Q|q)
	exit
	;;
*)
	echo "Please enter correct option:"
	;;
esac
done
exit 0
