#!/bin/bash

sudo slk status | grep -i 'full version'
sudo slk status | grep -i 'Tracee Version'
sudo slk status | grep -i 'express enabled'
sudo slk status | grep -i 'eBPF Host Behavioral Detection Enabled'
sudo slk status | grep -i 'eBPF Behavioral Engine Supported'
sudo slk status | grep -i 'eBPF Container Behavioral Detection Enabled'


sudo slk status | grep -i 'container runc interception mode'
echo 'cndr process is'
ps -e | grep cndr
echo 'slkavd process is'
ps -e | grep slkavd
sudo slk status | grep -i 'malware protection start time'
