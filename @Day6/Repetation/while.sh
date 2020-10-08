#! /bin/bash -x

a=0
while [ $a -gt 10 ]
do
echo "$a"
a=`expr $a + 1`
done
