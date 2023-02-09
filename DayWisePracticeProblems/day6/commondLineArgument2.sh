n=$1
result=1
counter=0

echo "Table of powers of 2"
while (($result -le 256))
do
  if (($counter <= $n))
 then
    echo "2^$counter = $result"
  fi
  result=$((result * 2))
  counter=$((counter + 1))
done
