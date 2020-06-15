#!/bin/bash

echo "Welcome to FlipcoinSimulator Program"

read -p "Enter number of times to flip a coin greater than 42 : " n
Heads=0
Tails=0

for(( i=1; i<=$n; i++ ))
do
	FlipCoin=$(( RANDOM%2 ))

	if [ $FlipCoin -eq 1 ]
	then
		Heads=`expr $Heads + 1`
	else
		Tails=`expr $Tails + 1`
	fi
done

echo "Number of times heads has won : $Heads"
echo "Number of times tails has won : $Tails"

if [[ (($Heads -ge 21)) && (($Tails -ge 21)) ]]
then
	if [[ $Heads -eq $Tails ]]
	then
		echo "Its Tie"
	elif [[ $Heads -le $Tails ]]
	then
		echo "Tails won by"
		majority_1=$(($Tails-$Heads))
		echo $majority_1
	else
		echo "Heads won by"
		majority_2=$(($Heads-$Tails))
		echo $majority_2
	fi
fi
