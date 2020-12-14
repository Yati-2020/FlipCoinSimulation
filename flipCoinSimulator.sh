#!/bin/bash

echo "Welcome to Flip Coin Simulation"

H=1
T=0
HC=0
TC=0

for (( i=1; i>0; i++ ))
do

        coinFlip=$((RANDOM%2));
        if [ $coinFlip -eq 1 ];
        then
                HC=$(( $HC + 1 ))
                res=$((HC - TC))
                if [ $res -eq 10 ]
                then
                        echo "Head wins with a difference of: $i";
                        #echo $i
                        exit
                fi
        fi

        if [ $coinFlip -eq 0 ];
        then
                TC=$(( $TC + 1 ))
                res1=$((TC - HC))
                if [ $res1 -eq 10 ]
                then
                        echo "Tail wins with a difference of: $i";
                        #echo $i
                        exit
                fi
        fi
done
