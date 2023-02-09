declare -A die_results

# Initialize all results to 0
for i in {1..6}
do
  die_results[$i]=0
done

while true
do
  # Roll the die and find the number
  number=$(( ( RANDOM % 6 ) + 1 ))
  die_results[$number]=$(( ${die_results[$number]} + 1 ))

  # Check if any number has reached 10 times
  max_count=0
  for count in "${die_results[@]}"
  do
    if [ $count -eq 10 ]
    then
      echo "the game ended"
      exit 0
    fi
    if [ $count -gt $max_count ]
    then
      max_count=$count
    fi
  done
done
