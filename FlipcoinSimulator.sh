#!/bin/bash

echo "Welcome to FlipcoinSimulator Program"

read -p "Enter number of times to flip a coin : " n
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

