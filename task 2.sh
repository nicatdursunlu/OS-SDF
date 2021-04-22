#Write a script that checks if the entered path of directory exists in the file system, pass current
#working directory to command line.

#! /bin/bash

echo -e "Please enter any path: "
read directory

if [[ -d "$directory" ]]
then 
   printf "$directory exists on your filesystem \n your current path is $PWD"
else 
  echo "$directory doesnt exist on your filesystem"
    
fi
