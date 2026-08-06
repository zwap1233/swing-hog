#!/bin/bash

source /opt/xilinx/2025.2/Petalinux/settings.sh

PRJ_NAME="blinkos"
IMG_FOLDER="$(realpath ../$PRJ_NAME/images/linux)"

echo 'Building sdk for $PRJ_NAME'

(cd ../$PRJ_NAME; petalinux-build --sdk)
(cd ../$PRJ_NAME; petalinux-package --sysroot)
