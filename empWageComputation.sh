#!/bin/bash -x

isPartTime=2
isFullTime=1
empWagePerHour=20
totalEmpHrs=0

for (( day=0;day<20;day++ ))
do
	empCheck=$(( RANDOM%3 ))
	case $empCheck in
		$isFullTime)
			empHrs=8;;
		$isPartTime)
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	totalEmpHrs=$(( $totalEmpHrs+$empHrs ))
done
empWagePerMonth=$(( $totalEmpHrs*$empWagePerHour ))
