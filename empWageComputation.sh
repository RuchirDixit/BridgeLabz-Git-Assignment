#!/bin/bash -x

isPresent=1

empCheck=$(( RANDOM%2 ))
if [[ $empCheck -eq $isPresent ]]
then
	echo "Present"
else
	echo "Absent"
fi
