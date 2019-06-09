#!/bin/bash

files_count=$(ls -1 | wc -l)

function numscmp {
  let res=$1-$2
  if [[ $res -eq 0 ]]
  then
    echo "$1 is correct!"
  elif [[ $res -gt 0 ]]
  then
    if [[ $res -gt 5 ]]
    then
      echo "$1 is too high."
    else
      echo "$1 is very close but still high."
    fi  
  else
    if [[ $res -lt -5 ]]
    then
      echo "$1 is too low."
    else
      echo "$1 is very close but still low."
    fi  
   fi
}

echo "How many files are in the current directory?"
while true 
do
  read user_count
  result="$(numscmp $user_count $files_count)" 
  if [ "$result" == "$user_count is correct!" ]
  then
    echo "$result"
    break
  fi
  echo "$result Try one more time."
done 