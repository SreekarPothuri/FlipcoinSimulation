#!/bin/bash -x

echo "Welcome to FlipcoinSimulator Program"

FlipCoin=$(( RANDOM%2 ))

if [ $FlipCoin -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi

