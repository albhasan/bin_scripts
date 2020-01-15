!#/bin/bash
################################################################################
# BACK UP THE SRCERIMENT DIRECTORY
################################################################################
notify-send "Starting back up of experiments from server..."
LOG_FILE="/home/alber/Documents/logs/backup_experiments.sh.log"
SRC="/home/alber/Documents/data/experiments"
DST="/home/alber/Documents/data2/experiments"
# rsync -rtvuzl --delete --log-file=/home/alber/Documents/backup_experiments.sh.log alber@150.163.2.206:/home/alber/Documents/data/experiments/ /home/alber/Documents/data2/experiments/
# rsync -rtvuzl --log-file=/home/alber/Documents/backup_experiments.sh.log  /home/alber/Documents/data/experiments/ /home/alber/Documents/data2/experiments/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/amazon_degradation                           "$DST"/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/change_detection                             "$DST"/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/kalman_filter                                "$DST"/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/l8mod-fusion                                 "$DST"/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/ts_normalization                             "$DST"/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/01_get_data              "$DST"/prodes_reproduction/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/02_train_model           "$DST"/prodes_reproduction/
#rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/03_classify              "$DST"/prodes_reproduction/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/04_validate              "$DST"/prodes_reproduction/
#rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/data                     "$DST"/prodes_reproduction/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/data/vector              "$DST"/prodes_reproduction/data
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/data/samples             "$DST"/prodes_reproduction/data
#rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/expert_validated_samples/landsat8 "$DST"/prodes_reproduction/expert_validated_samples/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/expert_validated_samples/samples "$DST"/prodes_reproduction/expert_validated_samples/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/qgis                     "$DST"/prodes_reproduction/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/R                        "$DST"/prodes_reproduction/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/Rpackage                 "$DST"/prodes_reproduction/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/scripts                  "$DST"/prodes_reproduction/
rsync -rtvuzl --delete --log-file="$LOG_FILE" "$SRC"/prodes_reproduction/soft                     "$DST"/prodes_reproduction/
notify-send "Finished back up of experiments from server!"

