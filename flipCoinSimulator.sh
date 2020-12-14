#!/bin/bash

echo "Welcome to Flip Coin Simulation"

H=0
T=1
HC=0
TC=0

for (( i=1; i>0; i++ ))
do
	coinFlip=$((RANDOM%2));
	if [ $coinFlip -eq 1 ];
	then
		HC=$(( $HC + 1 ))
		if [ $HC -eq 21 ]
		then
			res=$(( HC-TC ))
			echo "Head wins with a difference of: $res";
			exit
		fi
	fi

	if [ $coinFlip -eq 0 ];
	then
		TC=$(( $TC + 1 ))
		if [ $TC -eq 21 ]
                then
                        res1=$(( TC-HC ))
                        echo "Tail wins with a difference of: $res1";
			exit
                fi
	
	fi

done


