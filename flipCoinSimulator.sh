#!/bin/bash

echo "Welcome to Flip Coin Simulation"

coinFlip=$(( RANDOM%2 +1 ));

if [ $coinFlip -eq 1 ];
then
	echo "  It's Heads  ";
else
	echo "  It's Tails  ";
fi
