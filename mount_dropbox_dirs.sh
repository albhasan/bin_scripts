#!/bin/bash

machine=$(hostname)
echo "Mounting directories on $machine..."

if [[ "$machine" == "averno" ]]; then
    db_path="/media/alber/fd2f2147-f07d-4a8a-9e17-715140f0e470/Dropbox"
    mount --bind /media/alber/fd2f2147-f07d-4a8a-9e17-715140f0e470            /home/alber/Documents
    mount --bind /media/alber/fd2f2147-f07d-4a8a-9e17-715140f0e470/mp3        /home/alber/Music
elif [[ "$machine" == "darcy" ]]; then
    db_path="/home/alber/Dropbox"
elif [[ "$machine" == "sdb-desktop" ]]; then
    db_path=" /home/alber/Documents/Dropbox"
    mount --bind /home/alber/Documents/mp3                                    /home/alber/Music
else
    echo "ERROR: Unknown machine!"
    exit 1
fi
runuser -l  alber -c "encfs $db_path/encrypted ~/dbox-encrypted"
mount --bind "$db_path"/Photos                                                /home/alber/Pictures

##########################################################
# ENCRYPT DROPBOX
# http://www.howtogeek.com/121737/how-to-encrypt-cloud-storage-on-linux-and-windows-with-encfs/
# DO NOT WRITE TO THE DROPBOX FOLDER, USE THE OTHER FOLDER INSTEAD
##########################################################
# apt-get install encfs

# mount each time
# encfs /media/alber/fd2f2147-f07d-4a8a-9e17-715140f0e470/Dropbox/encrypted ~/dbox-encrypted 	# averno
# runuser -l  alber -c 'encfs /media/alber/fd2f2147-f07d-4a8a-9e17-715140f0e470/Dropbox/encrypted ~/dbox-encrypted'
