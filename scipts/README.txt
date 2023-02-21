
chmod +x ping_nginx_pod.bash

# run script in background and save it's PID
nohup ./ping_nginx_pod.bash > ping_nginx.log 2>&1 &
echo $! > save_pid.txt

#delete PID
kill -9 `cat save_pid.txt`

# run script in background (continue running even when shell will be closed) and save it's PID in memory_usage_scipt.pid

sudo nohup bash memory_usage.sh > memory_usage_res.csv 2>&1 < /dev/null & echo $! > memory_usage_script.pid

# kill PID from file
sudo kill $(cat memory_usage_script.pid)
