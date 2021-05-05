#!/bin/bash

#
# Example spinner progress bar in terminal script
#

spinner=( [^ooooooo] [o^oooooo] [oo^ooooo] [ooo^oooo] [oooo^ooo] [oooooo^o] [ooooooo^] )

spin() {
	while [ 1 ]
	do
		for i in "${spinner[@]}"
		do
			echo -ne "\r$i"
			sleep 0.1
		done
	done
}

copy_mock() {
	spin &
	pid_spin=$!
	
	#mocking copy files
	for i in `seq 1 5` 
	do
		sleep 1
	done
	
	kill $pid_spin
	echo -e "\nFiles has been copied"
}

copy_mock
