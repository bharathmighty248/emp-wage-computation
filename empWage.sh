#!/bin/bash -x

empCheck=$((RANDOM%2))

if [ $empCheck -eq 1 ]
then
	empRatePerHr=20
	empHrs=8
	wage=$(($empRatePerHr*$empHrs))
else
	echo Employee is absent
fi
