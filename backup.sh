#!/bin/sh

TIME=$(date +%m%d%H%M)
BACKUPDIR=/mnt/usb/compt2-snapshots/${TIME}

mkdir "${BACKUPDIR}"
rsync -av . "${BACKUPDIR}"
cd "${BACKUPDIR}/.."
zip -r "${TIME}.zip" "${TIME}/ckpts/YOLO_VGG/"
rclone copy -P "${TIME}.zip" 'n:/yolo/'
cd -
