# Step 1: Generates 10 Random 3 Digit numbers
for i in {1..10}; do
  numbers[$i]=$((RANDOM%900+100))
done

# Step 2: Store the random numbers into an array
array=("${numbers[@]}")

# Step 3: Sort the array
sorted_array=($(echo "${array[@]}" | tr ' ' '\n' | sort -n))

# Step 4: Find the 2nd largest and 2nd smallest element
second_largest=${sorted_array[8]}
second_smallest=${sorted_array[1]}

# Step 5: Print the result
echo "2nd largest number: $second_largest"
echo "2nd smallest number: $second_smallest"
