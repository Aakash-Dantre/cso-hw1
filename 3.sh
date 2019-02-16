echo your time diff is $2
echo $1 is n

while(( 1 ))
do	
	 let a=7+$2
	 let b=$2+2
	top -o %MEM | head -$a |tail -$b
	sleep $1
done



