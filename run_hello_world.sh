#!/bin/bash

# copy the binary files from the repository to the current machine that will run the job
rsync /mnt/vol/gfsai-flash-east/ai-group/users/$USER/binaries/hello_world .

tmp=$(sed -e 's/ /_/g' <<< "$@")
echo "$tmp" 

OUTFILE='/mnt/vol/gfsai-flash-east/ai-group/users/$USER/results/res_hello_world'
OUTFILE+=$@
OUTFILE+='.txt'
#echo $OUTFILE
# execute the job with the parameters passed to this script and store the result in a shared directory
#./hello_world $@ > $OUTFILE
