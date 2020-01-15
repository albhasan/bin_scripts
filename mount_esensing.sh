#!/bin/bash

# mount esensing directories

if [ "$#" -ne 1 ]; then
    echo "This script takes one parameter. Either experiments or data"
    exit 1
fi

if [ $1 = "experiments" ] ; then
    sshfs alber@150.163.2.206:/disks/d6/shared/alber/prodes_reproduction                 /home/alber/Documents/data/experiments/prodes_reproduction 
    sshfs alber@150.163.2.206:/disks/d6/shared/alber/l8mod-fusion                        /home/alber/Documents/data/experiments/l8mod-fusion
    #sshfs alber@150.163.2.206:/home/alber/Documents/data/experiments/amazon_degradation /home/alber/Documents/data/experiments/amazon_degradation
    #sshfs alber@150.163.2.206:/home/alber/Documents/data/experiments/kalman_filter      /home/alber/Documents/data/experiments/kalman_filter
    #sshfs alber@150.163.2.206:/home/alber/Documents/data/experiments/change_detection   /home/alber/Documents/data/experiments/change_detection
fi


if [ $1 = "data" ] ; then
    # sshfs -o ro alber@150.163.2.208:/net/150.163.2.208/disks/d7/hdf2tif_03            /home/alber/Documents/data/e-sensing/hdf2tif_03
    # sshfs -o ro alber@150.163.2.206:/disks/d6/shared/alber/prodes_mosaic/               /home/alber/prodes_mosaic
    sshfs alber@150.163.2.206:/disks/d6/shared/alber                                    /home/alber/shared
fi

