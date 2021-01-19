read -p "Enter 3 numbers : " a b c

function computation(){

compute1=$(($a+$b*$c))
echo $compute1

compute2=$(($a*$b+$c))
echo $compute2

compute3=$(($c+$a/$b))
echo $compute3

compute4=$(($a%$b+$c))
echo $compute4

compute5=$(($c+$a/$b))
echo $compute5

}

results=$( computation $a $b $c)
echo $results

arr=$results

echo ${arr[@]}

len=${#arr}

for ((i=0; i<$len; i++))
do
  for ((j=i; j<$len; j++))
  do
    if [[ ${arr[i]} -lt ${arr[j]} ]]
    then
       temp=${arr[$i]}
       arr[$i]=${arr[$j]}
       arr[$j]=$temp
    fi
  done
done

echo "sorted array in descending order : ${arr[*]}"

for ((i=0; i<$len; i++))
do
  for ((j=i; j<$len; j++))
  do
    if [[ ${arr[i]} -lt ${arr[j]} ]]
    then
       temp=${arr[$i]}
       arr[$i]=${arr[$j]}
       arr[$j]=$temp
    fi
  done
done

echo "sorted array in ascending order: ${arr[*]}"


