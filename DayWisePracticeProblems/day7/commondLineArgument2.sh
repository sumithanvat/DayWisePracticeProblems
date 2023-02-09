get_random_number() {
  echo $((100 + RANDOM % 900))
}

numbers=()

for i in {1..10}
do
  numbers+=($(get_random_number))
done

echo "Random 3-digit numbers:"
for number in ${numbers[@]}
do
  echo $number
done

