#!/bin/bash

sudo slk status | grep -i 'full version'
sudo slk status | grep -i 'container interception mode'
sudo slk status | grep -i 'container runc interception mode'
sudo slk status | grep -i 'Tracee Version'
sudo slk status | grep -i 'express enabled'
echo 'cndr process is'
ps -e | grep cndr
echo 'slkavd process is'
ps -e | grep slkavd
sudo slk status | grep -i 'malware protection start time'
echo 'slkinterceptor process is'
ps -e | grep slkinterceptor
echo 'slknetd process is'
ps -e | grep slknetd
echo 'slkscan process is'
ps -e | grep slkscan
echo 'slkaudit process is'
ps -e | grep slkaudit
