#!/bin/bash -x

counter=0
name_array[((counter++))]=Akhil
name_array[((counter++))]=Vijay
name_array[((counter++))]=Shepali
name_array[((counter++))]=Pranali

#echo ${name_array[@]:1:3}
echo ${#name_array[1]}

