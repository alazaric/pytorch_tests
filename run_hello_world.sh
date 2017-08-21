#!/bin/bash

## Step 1: construct the script that should be passed to crun

# copy the binary files from the repository to the current machine that will run the job
exe_script=$'rsync /mnt/vol/gfsai-flash-east/ai-group/users/'$USER$'/binaries/hello_world .\n'

# prepare the output file by appending the parameters
params_with_under=$(sed -e 's/ /_/g' <<< "$@")
OUTFILE='/mnt/vol/gfsai-flash-east/ai-group/users/'
OUTFILE+=$USER
OUTFILE+='/results/res_hello_world_'
OUTFILE+="$params_with_under"
OUTFILE+='.txt'

# execute the job with the parameters passed to this script and store the result in a shared directory
exe_script+="./hello_world $@ > "$OUTFILE

# let us display what we are going to pass to crun
echo "$exe_script"

## Step 2: actually execute the desired command on the cluster through crun
echo "$exe_script" | crun -G 1
