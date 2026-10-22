#!/bin/bash

source /opt/xilinx/2025.2/Petalinux/settings.sh

PRJ_NAME="swingos"
IMG_FOLDER="$(realpath ../$PRJ_NAME/images/linux)"

echo 'Building image for $PRJ_NAME'

(cd ../$PRJ_NAME; petalinux-build)
