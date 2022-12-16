#!/bin/bash -x

name_array=( Anshuman ELAM akhil apple orange )

#echo ${name_array[@]}
#echo ${name_array[*]}

#print  first element
#echo ${name_array[0]}

#print 4th element
echo ${name_array[3]}

echo ${name_array[@]:1:4}
