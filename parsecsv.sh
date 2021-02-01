#!/bin/bash
OLDIFS=$IFS
IFS=","
while read account name location
do
  echo -e "\e[1;33m$account \
  ===================\e[0m\n\
  Name: \t $name \n\
  Location: \t $location \n"

done < $1
IFS=$OLDIFS
