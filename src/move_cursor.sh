#!/bin/bash

while :; do
	echo "$RANDOM"
	echo "$RANDOM"
	echo "$RANDOM"
	sleep 0.2
	tput cuu1 # move cursor up by one line
	tput el	  # clear line
	tput cuu1
	tput el	
	tput cuu1
	tput el	
done
