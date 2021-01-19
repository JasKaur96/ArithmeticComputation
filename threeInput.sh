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
