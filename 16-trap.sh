# the trap command enables shell scripts to respond to signals originating from system or user activity

# trap <arg/function> <signal> --> Syntax

#!/bin/bash

trap "echo Booh!" SIGINT SIGTERM
echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true        
do
    sleep 60       
done

# with function

function booh {
    echo "booh!"
}

trap booh SIGINT SIGTERM

# SIGINT: user sends an interrupt signal (Ctrl + C)
# SIGQUIT: user sends a quit signal (Ctrl + D)
# SIGFPE: attempted an illegal mathematical operation

kill -l --> To checkout all signal types

trap "rm -f folder; exit" 2 # to clean up temporary files 2 is for SIGINT and 15 for SIGTERM

