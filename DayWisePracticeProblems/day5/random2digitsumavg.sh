random1=$(( ( RANDOM % 90 )  + 10 ))
random2=$(( ( RANDOM % 90 )  + 10 ))
random3=$(( RANDOM % 90 +10 ))
random4=$((RANDON % 90 +10))
random5=$((RANDOM % 90 +10))
sum=$(( random1 + random2 + random3 + random4 + random5 ))
avg=$((($sum)/5))
echo "The result of rolling five random is $sum"
echo "the average of all five random is $avg"
