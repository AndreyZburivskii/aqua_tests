#!/bin/bash

trap "echo Exit from script" EXIT
while true
do	
date;curl localhost:30007
sleep 5
done
