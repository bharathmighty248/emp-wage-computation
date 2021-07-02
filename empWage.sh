#!/bin/bash -x
#constants
IS_FULLTIME=1
IS_PARTTIME=2
MAX_HRS_IN_MONTH=100

#variables
totalEmpHrs=0
totalWorkingDays=0

empRatePerHr=20
numOfWorkingDays=20

while [[ ($totalEmpHrs -lt $MAX_HRS_IN_MONTH) && ($totalWorkingDays -lt $numOfWorkingDays) ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))

	case $empCheck in
		$IS_FULLTIME)
			empHrs=8
		;;
		$IS_PARTTIME)
			empHrs=4
		;;
		*)
			empHrs=0
		;;
	esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
wage=$(($totalEmpHrs*$empRatePerHr))
echo $wage
