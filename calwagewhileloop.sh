#!/bin/bash -x

perHourSalary=20;    # employee can only work for 40 hr
workingHour=0;
totalSalary=0;
totalworkingHour=0;
day=1;
while [[ $day -le 20 && $totalworkingHour -lt 40 ]]
do
        ispresent=$((RANDOM%3)); #0,1,2
        case $ispresent in
                0)
                #echo "Employee is absent";
                workingHour=0;
                ;;

                1)
                #echo "Employee is present";
                workingHour=8;
                ;;

                2)
                #echo "Employee is working as part time";
                workingHour=4;
                ;;
        esac
        totalWorkingHour=$(($totalWorkingHour + $workingHour));
        if [ $totalWorkingHour -gt 40 ]
        then
                 totalWorkingHour=$(($totalWorkingHour - $workingHour));
                 break;
        fi
        salary=$(($perHourSalary * $workingHour));
        totalSalary=$(($totalSalary + $salary));
        ((day++));
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalworkingHour)";
