# Write script that compare entered number with 20. If number is equal, pass the answer to command
line.

#! /bin/bash

echo -e "Please enter your number: "
read number

if [[ $number -eq 20 ]]
then echo  "Number is $number"
fi
