#num=$(( 1+RANDOM%1000 ))
#echo $num
MAXCOUNT=10
count=1

while (( "$count" <= $MAXCOUNT )) 
do

 number[$count]=$(( RANDOM%999+100 ))

	(( count ++ ))
done

echo "number =" ${number[@]}
secondGreatest=$(printf '%s\n' "${number[@]}" | sort -n | tail -2 | head -1)
echo "SecondGreatest =" $secondGreatest
