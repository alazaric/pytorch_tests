#!/bin/bash

rsync /mnt/vol/gfsai-flash-east/ai-group/users/$USER/binaries/hello_world .
./hello_world > /mnt/vol/gfsai-flash-east/ai-group/users/$USER/results/res_hello_world.txt
