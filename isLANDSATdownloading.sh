#!/bin/bash
################################################################################
# CHECK IF THE DOWNLOAD SCRIPT IS RUNNING
################################################################################

result=$(pgrep -fl download_espa_order.py | wc -l)
scriptpath="$( cd "$(dirname "$0")" ; pwd -P )"
scriptname=$(basename "$0")
thetime="$(date '+%Y-%m-%d %H:%M:%S')"
if [ "$result" -ge 1 ]
    then
    echo "isLANDSATdownloading.sh is downloading images"
else
    echo "$thetime: isLANDSATdownloading is not running. Starting it...." >> "$scriptpath/$scriptname".log
    python /home/alber/Documents/ghProjects/espa-bulk-downloader/download_espa_order.py -o ALL -d /home/alber/Documents/data/LANDSAT/orders -u albhasan -p WU3o1VxrnpEcvy6q -v -c &
    imagepart=$(find /home/alber/Documents/data/LANDSAT/orders -name "*part*" | wc -l)
    if [ "$imagepart" -ge 1 ]
        then
        echo "$thetime: There are images partially downloaded"
    else
        echo "$thetime: INFO. There are NO partially downloaded images. Are the download orders completed?" >> "$scriptpath/$scriptname".log
    fi
    Rscript /home/alber/Documents/Dropbox/alberLocal/inpe/projects/e-sensing/e-sensing2_sdb_cluster/loadLANDSAT/test_order_vs_download.R
fi

