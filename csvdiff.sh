#!bin/bash

FS=','
while getopts ':s:' opt
do
  case "$opt" in
    s) FS="'$OPTARG'"; shift 2;
     break ;;
    *) echo "Usage: $0 [-c] <file-separator>"
     ;; 
  esac
done

echo $FS
file1=$1
file2=$2 

results=$(awk -F"$FS" 'FNR==NR {a[$1]; next};!($1 in a)' $file1 $file2)

echo $results
