#!/bin/bash

# print the output header once
echo "Timestamp;Virtual;Physical;Dirty;Process"

while true
do
  # iterate over each process and print its details
  for i in $(pgrep slk)
  do
    echo "$(date +'%Y-%m-%d %H:%M:%S');$(pmap -x $i | grep total | awk '{printf "%.2fMB;%.2fMB;%.2fMB;",$3/1024,$4/1024,$5/1024}')$(ps -p $i -o comm=)"
  done

  # wait for 1 hour before running again
  sleep 3600
done


