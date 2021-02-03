#!/bin/bash
#Zmień adres basowy 192.168.0 odopwiednio do konfguracji wlasnej sieci.

for ip in 192.168.0.{1..255} ;
do 
	(
		ping $ip -c2 &> /dev/null ;
		
		if [ $? -eq 0 ];
		then
			echo $ip jest aktywny
		fi
	)&
done
wait
