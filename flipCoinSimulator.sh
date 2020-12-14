#!/bin/bash

echo "Welcome to Flip Coin Simulation"

H=0
T=1
HC=0
TC=0

for (( i=1; i<=10; i++ ))
do
	coinFlip=$((RANDOM%2));
	if [ $coinFlip -eq 1 ];
	then
		HC=$(( $HC + 1 ))
	fi

	if [ $coinFlip -eq 0 ];
	then
		TC=$(( $TC + 1 ))
	fi
done

echo "Number of times Head: " $HC
echo "Number of time Tail: " $TC


