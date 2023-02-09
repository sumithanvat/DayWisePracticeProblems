# Function to find combinations of three integers that add up to zero
find_combinations() {
  numbers=($@)
  length=${#numbers[@]}
  for ((i=0; i<$((length-2)); i++)); do
    for ((j=i+1; j<$((length-1)); j++)); do
      for ((k=j+1; k<$length; k++)); do
        if [[ $((numbers[i]+numbers[j]+numbers[k])) -eq 0 ]]; then
          echo "${numbers[i]} + ${numbers[j]} + ${numbers[k]} = 0"
        fi
      done
    done
  done
}

# Main program
echo "Enter three integers separated by space:"
read -p numbers

# Call the function to find combinations
find_combinations "${numbers[@]}"
echo "${numbers[@]}"
