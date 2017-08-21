#!/bin/bash

# create the binaries
gcc -O3 hello_world.c -o hello_world

# copy the binaries to a shared directory
rsync --progress hello_world /mnt/vol/gfsai-flash-east/ai-group/users/$USER/binaries/
