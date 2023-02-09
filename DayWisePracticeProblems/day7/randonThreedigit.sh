# Generate 10 random 3-digit numbers
for i in {1..10}; do
arr[i]=$((RANDOM % 900 + 100))
done

# Find the 2nd largest and 2nd smallest element
max1=0
max2=0
min1=999
min2=999
for i in "${arr[@]}"; do
  if [ $i -gt $max1 ]; then
    max2=$max1
    max1=$i
  elif [ $i -gt $max2 ]; then
    max2=$i
  fi
  if [ $i -lt $min1 ]; then
    min2=$min1
    min1=$i
  elif [ $i -lt $min2 ]; then
    min2=$i
  fi
done

echo "Array: "${arr[@]}
echo "2nd Largest: "$max2
echo "2nd Smallest: "$min2
