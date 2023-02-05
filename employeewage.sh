#! /bin/bash -x

echo "Welcome To Employee Wage Computation Program on Master Branch";

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



while [[ $totalWorkingHour  -lt MAX_WORKING_HOUR || $totalWorkingDays -lt MAX_WORKING_DAYS ]]
do
   ((totalWorkingDays++));
   isPresent=$(($RANDOM%3));
   case $isPresent in
         0)echo "Employee is absent";
            workingHour=0;;
         1)echo "Employee is present";
            workingHour=8;;
         2)echo "Employee is working part time";
            workingHour=8;;
   esac
   totalWorkingHour=$(($totalWorkingHour+$workingHour))
   salary=$(($WAGE_PER_HR * $workingHour));
   totalSalary=$(($totalSalary + $salary));

done
echo "Employee has earned $totalSalary in a month";
echo "Employee Total Working Hour=" $(($totalWorkingHour-$workingHour));
echo "Employee Total Working Days=" $(($totalWorkingDays-1))
