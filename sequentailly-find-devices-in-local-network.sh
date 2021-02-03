#!/bin/bash
#Zmien adres bazowy odpowiednio dokonfiguracji własnej sieci.

for ip in 192.168.0.{1..255} ;
do
	ping $ip -c 2 &> /dev/null ;
	
	if [ $? -eq 0 ] ;
	then
		echo $ip jest aktywny
	fi
done
