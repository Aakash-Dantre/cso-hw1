mkdir $1/archive-date

date=`date -d "$2" +%Y%m%d`

echo 


ls $1 > lol
while read -r line ;do

datefile=` stat $1/$line | tr -s ' ' |sed -n 5p| cut -d' ' -f2`

datefil=`date -d "$datefile" +%Y%m%d`

echo $datefil

if (( datefil < date ))
   then 
   mv $1/$line $1/archive-date
   fi
done < lol
rm lol


