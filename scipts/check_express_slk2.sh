#!/bin/bash

sudo /var/lib/aquasec/slk status | grep -i 'full version'
sudo /var/lib/aquasec/slk status | grep -i 'Tracee Version'
sudo /var/lib/aquasec/slk status | grep -i 'express enabled'
sudo /var/lib/aquasec/slk status | grep -i 'eBPF Host Behavioral Detection Enabled'
sudo /var/lib/aquasec/slk status | grep -i 'eBPF Behavioral Engine Supported'
sudo /var/lib/aquasec/slk status | grep -i 'eBPF Container Behavioral Detection Enabled'


sudo /var/lib/aquasec/slk status | grep -i 'container runc interception mode'
echo 'cndr process is'
ps -e | grep cndr
echo 'slavd process is'
ps -e | grep slkavd
sudo /var/lib/aquasec/slk status | grep -i 'malware protection start time'