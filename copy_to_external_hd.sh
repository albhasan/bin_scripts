#!/bin/bash

# copy experiments to hard drive

LOG_FILE="/home/alber/Documents/logs/backup_hard_drive.log"

PRODES_REP="/home/alber/Documents/data/experiments/prodes_reproduction"
PRODES_REP_DEST="/media/alber/UNTITLED/alber/prodes_reproduction"

#L8MOD_FUS="/home/alber/Documents/data/experiments/l8mod-fusion"
#L8MOD_FUS_DEST="/media/alber/UNTITLED/alber/l8mod-fusion"

#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/03_classify/rep_prodes_40 "$PRODES_REP_DEST"/03_classify 
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/03_classify/rep_prodes_41 "$PRODES_REP_DEST"/03_classify 
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/03_classify/rep_prodes_42 "$PRODES_REP_DEST"/03_classify
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/03_classify/rep_prodes_50 "$PRODES_REP_DEST"/03_classify 
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/03_classify/rep_prodes_51 "$PRODES_REP_DEST"/03_classify
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/03_classify/rep_prodes_52 "$PRODES_REP_DEST"/03_classify
rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/data/raster/cloud_count   "$PRODES_REP_DEST"/data/raster
rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/data/raster/prodes_mosaic "$PRODES_REP_DEST"/data/raster
rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/data/samples              "$PRODES_REP_DEST"/data
rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/data/vector/prodes_tiled  "$PRODES_REP_DEST"/data/vector
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/data/vector/wrs2_asc_desc "$PRODES_REP_DEST"/data/vector
rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/qgis                      "$PRODES_REP_DEST"
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$PRODES_REP"/Rpackage                  "$PRODES_REP_DEST"
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" /home/alber/landsat8/LC08_225_063       "$PRODES_REP_DEST"/data/raster/landsat8
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" /home/alber/landsat8/LC08_226_064       "$PRODES_REP_DEST"/data/raster/landsat8
#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" /home/alber/landsat8/LC08_233_067       "$PRODES_REP_DEST"/data/raster/landsat8
rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" /home/alber/shared/harmonized_landsat_sentinel2/data/hls "$PRODES_REP_DEST"/data/raster/harmonized_landsat_sentinel2/data/hls

#rsync -rtvuzl --ignore-errors --log-file="$LOG_FILE" "$L8MOD_FUS"/Rpackage                   "$L8MOD_FUS_DEST"

