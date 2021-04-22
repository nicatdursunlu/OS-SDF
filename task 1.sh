# Write script that compare entered number with 20. If number is equal, pass the answer to command
line.

#! /bin/bash

echo -e "Please enter your number: "
read number

if [[ $number -eq 20 ]]
<<<<<<< HEAD:task 1.sh
then 
    echo  "$number is equal 20"
else 
    echo "$number is not equal 20"
fi
=======
then echo  "Number is $number"
fi
>>>>>>> 7f3496bb2f05382234158ac492bef3c75ead7788:task 1.txt
