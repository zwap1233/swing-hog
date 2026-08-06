#!/bin/bash

source /opt/xilinx/2025.2/Petalinux/settings.sh

PRJ_NAME="blinkos"
IMG_FOLDER="$(realpath ../$PRJ_NAME/images/linux)"

echo 'Building image for $PRJ_NAME'

(cd ../$PRJ_NAME; petalinux-build)

(cd ../$PRJ_NAME; petalinux-package boot --force --fsbl $IMG_FOLDER/zynq_fsbl.elf --u-boot $IMG_FOLDER/u-boot.elf --fpga $BIT_FILE)

(cd ../$PRJ_NAME; petalinux-package wic --bootfiles "BOOT.BIN image.ub boot.scr" --rootfs-file $IMG_FOLDER/rootfs.tar.gz)
