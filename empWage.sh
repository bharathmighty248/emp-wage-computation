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

function getWorkingHrs(){
	case $1 in
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
	echo $empHrs
}

function dailyWage(){
	wage=$((empRatePerHr*$workHrs))
	echo $wage
}

while [[ ($totalEmpHrs -lt $MAX_HRS_IN_MONTH) && ($totalWorkingDays -lt $numOfWorkingDays) ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	workHrs="$( getWorkingHrs $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$workHrs))
	empDailyWage[$totalWorkingDays]="$( dailyWage $workHrs )"
done
wage=$(($totalEmpHrs*$empRatePerHr))
echo "DailyWage :: " ${empDailyWage[@]}
echo "TotalWage :: " $wage
