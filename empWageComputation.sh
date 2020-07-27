#!/bin/bash -x

IS_PART_TIME=2
IS_FULL_TIME=1
EMP_WAGE_PR_HOUR=20
MAX_WORKDAYS=20
MAX_WORK_HRS=10
totalEmpHrs=0
totalWorkingDays=0

#declare dictionary
declare -A dictDailyWage

function getEmpHours()
{
	empCheck=$1
   case $empCheck in
      $IS_FULL_TIME)
         empHrs=8;;
      $IS_PART_TIME)
         empHrs=4;;
      *)
         empHrs=0;;
   esac
	echo $empHrs
}

while [[ $totalWorkingDays -lt $MAX_WORKDAYS && $totalEmpHrs -lt $MAX_WORK_HRS ]]
do
	empCheck=$(( RANDOM%3 ))
	empHrs=$( getEmpHours $empCheck )
	totalEmpHrs=$(( $totalEmpHrs+$empHrs ))
	dailyWageArray[$totalWorkingDays]=$(( $empHrs*$EMP_WAGE_PR_HOUR ))
	(( totalWorkingDays++ ))
	dictDailyWage["Day "$totalWorkingDays]=$(( $empHrs*$EMP_WAGE_PR_HOUR ))
done
empWagePerMonth=$(( $totalEmpHrs*$EMP_WAGE_PR_HOUR ))
