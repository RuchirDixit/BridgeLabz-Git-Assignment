#!/bin/bash -x

isPresent=1
isPartTime=2
isFullTime=1
empHrs=8
empWagePerHour=20
empHrsPartTime=4

empCheck=$(( RANDOM%2 ))
if [[ $empCheck -eq $isPresent ]]
then
	echo "Present"
	dailyWage=$(( $empHrs*$empWagePerHour ))
	echo "Daily Wage Full Time: "$dailyWage
	dailyWagePT=$(( $empHrsPartTime*$empWagePerHour ))
	echo "Daily Wage Part Time: "$dailyWagePT
else
	echo "Absent"
fi
