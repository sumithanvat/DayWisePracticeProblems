read -p " number1 " a
read -p " number2 " b
if [ $a -eq $b ]
then
 echo" number1 is equal to number2 "
elif [ $a -gt $b ]
then
echo " number1 is greater than number2 "
else
echo " number1 is smaller than number2 "
fi
