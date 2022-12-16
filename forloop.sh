#!/bin/bash -x

for (( count=1; count<=10; count=$(( count+2 )) ))
do
        echo $count;
done

