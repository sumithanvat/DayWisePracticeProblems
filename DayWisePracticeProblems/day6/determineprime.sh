read -p "enter a number:-" n
for (( i=2;i<=$n/2;i++ ))
do
if [ $((n%2)) -eq 0 ]
then 
echo "$n is not a prime number"
exit
fi
done
echo "$n given number is prime"

