#!/bin/bash -x

isPresent=1

empHrs=8
empWagePerHour=20


empCheck=$(( RANDOM%2 ))
if [[ $empCheck -eq $isPresent ]]
then
	echo "Present"
	dailyWage=$(( $empHrs*$empWagePerHour ))
	echo "Daily Wage: "$dailyWage
else
	echo "Absent"
fi
