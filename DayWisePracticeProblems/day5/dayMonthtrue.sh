read -p "enter a date:-" date
read -p "enter a month:-" month

if (($month <=6 & $date <=20))
then
  echo $date $month "true"
elif (($month >=3 & $date >=20)) & (($month <=6 & $date <=20))
then
echo $date $month "true"
else
  echo "false"
fi
