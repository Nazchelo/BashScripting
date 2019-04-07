#! /bin/bash
clear
function Menu() { 
echo -e  "1. Create user\n2. Delete user\n3. Create group\n4. Delete group\n5. Edite user\n6. Show info\n0. Exit"
read choice
}
function CreateUser () {
clear
echo -e "1) Name\n2) Name + UID +GID"
read userChoice




	if  (($userChoice== 1 ))
	then
	echo "Enter username: "
	read newUserName
	useradd $newUserName
		if (($?==0))
		then echo "User create, choose passwd!"
	passwd $newUserName
	else 
		clear
		echo "Sorry, this User not free, choose something else"
		cat /etc/passwd | grep $newUserName
	fi





elif (( $userChoice == 2))
then 
	
	echo "Enter username + UID + GID"
read newUserName1
read gid
read uid

cat /etc/passwd | grep $newUserName1
useradd $newUserName1 
groupadd $gid
usermod $newUserName1 -u $uid -g $gid 
elif (($?==0))
then echo "User+UID+GID exist"
else
	echo "wrong choice"
fi 
}


exit=true

while [ $exit==true ]
do
Menu;
case $choice in
	1)CreateUser; ;;
	0)echo "Bye!"; let exit=false; ;;
	*)echo "R.T.F.M."; ;;
esac
done
