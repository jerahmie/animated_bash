#!/bin/bash

__animations__frames=(
	'|' '/' '-' '\'
	)	


animate_function () {
	
       	$1 &

	command_pid=$!

	while kill -0 $command_pid 2>/dev/null; do
		for frame in "${__animations__frames[@]}"; do
			echo -ne "\r${frame}" "Waiting"
			sleep 0.5
		done
	done
	printf "\r👍\033[32mFinished.\033[0m\n"
}

# Execute function
animate_function "sleep 4"
animate_function "sleep 4"
animate_function "sleep 4"
animate_function "sleep 4"

