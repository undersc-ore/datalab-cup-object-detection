#!/bin/sh

TIME=$(date +%m%d%H%M)
BACKUPDIR=/mnt/usb/compt2-snapshots/${TIME}

mkdir "${BACKUPDIR}"
rsync -av . "${BACKUPDIR}"
