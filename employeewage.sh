#! /bin/bash -x

echo "Welcome To Employee Wage Computation Program on Master Branch";

WAGE_PER_HR=20;
IS_FULL_TIME=8;
IS_PART_TIME=8;

workingHour=0;
totalSalary=0;

isPresent=$(($RANDOM%3));
case $isPresent in 
			0)echo "Employee is absent";
				workingHour=0;;
			1)echo "Employee is present";
				workingHour=8;;
			2)echo "Employee is working part time";
				workingHour=8;;
esac
salary=$(($WAGE_PER_HR * $workingHour));
totalSalary=$(($totalSalary + $salary));


echo "Employee has earned $totalSalary in a month"
