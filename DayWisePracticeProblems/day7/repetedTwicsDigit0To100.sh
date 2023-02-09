# Function to find repeated two-digit numbers
find_repeated() {
  index=0
  for ((i=10; i<=99; i++)); do
    if [[ $((i%11)) -eq 0 ]]; then
      repeated[$index]=$i
      index=$((index+1))
    fi
  done
}

find_repeated

echo "Repeated two-digit numbers are: ${repeated[@]}"
