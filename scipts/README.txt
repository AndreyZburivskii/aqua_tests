
chmod +x ping_nginx_pod.bash

# run script in background and save it's PID
nohup ./ping_nginx_pod.bash > ping_nginx.log 2>&1 &
echo $! > save_pid.txt

#delete PID
kill -9 `cat save_pid.txt`
