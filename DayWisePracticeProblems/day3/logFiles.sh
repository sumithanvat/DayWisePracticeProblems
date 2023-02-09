for file in log;
  dir=`echo $file | cut -d`
  mkdir -p $dir
done

for file in *.log; do
  dir=`echo $file | cut -d`
  cp $file $dir/$file
done

current_date=$(date)
for file in *.log; do
  dir=`echo $file | cut -d
  cp $file $dir/${current_date}_$file
done
