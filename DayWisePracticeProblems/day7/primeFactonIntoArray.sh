# Function to check if a number is prime or not
is_prime() {
  number=$1
  if [[ $number -le 1 ]]; then
    return 0
  fi
  for ((i=2; i<=$(($number/2)); i++)); do
    if [[ $((number%i)) -eq 0 ]]; then
      return 0
    fi
  done
  return 1
}

# Function to find prime factors of a number
prime_factors() {
  number=$1
  index=0
  for ((i=2; i<=number; i++)); do
    while [[ $((number%i)) -eq 0 ]]; do
      prime_factors[$index]=$i
      index=$((index+1))
      number=$((number/i))
    done
  done
}

# Main program
echo "Enter a number:"
read n

# Find prime factors of n
prime_factors $n

# Display the result
echo "Prime factors of $n are: ${prime_factors[@]}"
