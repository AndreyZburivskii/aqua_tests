#!/bin/bash

while true
do    
    for i in {0..50}
    do
        # array of file types
        types=(txt jpg png mp3 mp4 bash pdf html php) 

        # select a random file type
        file_type=${types[$RANDOM % ${#types[@]}]}

        # generate a random size (in MB) between 1 and 10
        file_size=$(( ( RANDOM % 10 )  + 1 ))

        # Generate a random subdirectory name
        rand_dir_name="tmp_$RANDOM"
        # Create the subdirectory in the ~/tmp directory
        mkdir /tmp/$rand_dir_name

        # create the file
        #dd if=/dev/urandom of=file.$file_type bs=1M count=$file_size
        dd if=/dev/urandom of=/tmp/$rand_dir_name/file.$file_type bs=1M count=$file_size
        sleep 1

    done
    # ping nginx app from pod
    for i in {1..60}
        do 
            curl $MY_SERVICE_NP_SERVICE_HOST
            sleep 1
        done
    remove files
    rm -rf /tmp/tmp_*
done    