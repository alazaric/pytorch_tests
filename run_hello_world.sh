#!/bin/bash

# copy the binary files from the repository to the current machine that will run the job
rsync /mnt/vol/gfsai-flash-east/ai-group/users/$USER/binaries/hello_world .

# prepare the output file by appending the parameters
params_with_under=$(sed -e 's/ /_/g' <<< "$@")
OUTFILE='/mnt/vol/gfsai-flash-east/ai-group/users/'
OUTFILE+=$USER
OUTFILE+='/results/res_hello_world_'
OUTFILE+="$params_with_under"
OUTFILE+='.txt'

# execute the job with the parameters passed to this script and store the result in a shared directory
./hello_world $@ > $OUTFILE
