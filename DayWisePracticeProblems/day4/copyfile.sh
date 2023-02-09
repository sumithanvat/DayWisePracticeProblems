for file in *.log; do
  dir=`echo $file | cut -d'.' -f1`
  mkdir -p $dir
done

for file in *.log; do
  dir=`echo $file | cut -d'.' -f1`
  cp $file $dir/$file
done

current_date=$(date +%F)
for file in *.log; do
  dir=`echo $file | cut -d'.' -f1`
  cp $file $dir/${current_date}_$file
done
