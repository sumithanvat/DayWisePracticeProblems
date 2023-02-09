number=$((( RANDOM % 6)+1))
echo "rolling a dice number is $number"
for i in {1..10}
do 
number=$((( RANDOM % 6 )+1))
echo "roll $i:the number is $number"
done
