#! /bin/bash -x
#Constants
WAGE_PER_HR=20;
IS_FULL_TIME=8;
IS_PART_TIME=8;
MAX_WORKING_HOUR=100;
MAX_WORKING_DAYS=20;

#variables
workingHour=0;
totalSalary=0;
totalWorkingHour=0;
totalWorkingDays=0;

#Here working hour is assigned
function getHrs(){

local empCheck=$1
case $empCheck in
         0)workingHour=0;;
         1)workingHour=8;;
         2)workingHour=8;;
   esac
        echo $workingHour;


}

function dailywage(){

local empHr=$1
echo $(( $empHr * $WAGE_PER_HR ))

}

while [[ $totalWorkingHour  -lt MAX_WORKING_HOUR || $totalWorkingDays -lt MAX_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   isPresent=$(($RANDOM%3));
   workingHour="$( getHrs $isPresent )"
   totalWorkingHour=$(($totalWorkingHour+$workingHour))
   salary=$(($WAGE_PER_HR * $workingHour));
   totalSalary=$(($totalSalary + $salary));
   dailywage[$totalWorkingDays]="$( dailywage $workingHour )";

done

echo "Employee has earned $totalSalary in a month";
echo "Employee Total Working Hour=" $(($totalWorkingHour-$workingHour));
echo "Employee Total Working Days=" $(($totalWorkingDays-1))
echo "${dailywage[@]}"
