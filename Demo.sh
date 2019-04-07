#! /bin/bash
clear 
#echo "What is your name?"
#read name

#echo "Hi, $name!"

#echo -e "Ping?\nEnter address:"

#read address

#ping $address -c 4

#read month

#if (( $month==1 || $month==2 || $month==12  ))
#then 
#	echo "winter!"

#elif (($month==3 || $month==4 || $month==5 ))
#then
#	echo "spring!"

#elif (($month==6 || $month==7 || $month==8))
#then
#	echo "summer!"

#elif (($month==9 || $month==10 || $month==11))
#then
#	echo "autumn!"
#else 
#	echo "1-12"
#fi

exit=true
while [ $exit==true ]
do
 
echo -e "enter month\n0. Exit"
read month
clear
case $month in
	1|2|12) echo "winter"; ;;
	3|4|5) echo "spring"; ;;
	6|7|8) echo "summer"; ;;
	9|10|11) echo "autemn"; ;;
	0) echo "Bye!"; let exit=false ;;
	*) echo "1-12"; ;;
esac
done
