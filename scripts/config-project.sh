#!/bin/bash

source /opt/xilinx/2025.2/Petalinux/settings.sh

PRJ_NAME="blinkos"

LAST_BIN="$(realpath $(ls -td -- ../bin/*/ | head -n 1))"
XSA_FILE="$(find $LAST_BIN/*.xsa)"
BIT_FILE="$(find $LAST_BIN/*.bit)"

IMG_FOLDER="$(realpath ../$PRJ_NAME/images/linux)"

echo "Creating petalinux project: $PRJ_NAME"
echo "BIN folder: $LAST_BIN"

if [ ! -d $PRJ_NAME ]; then #if folder doesnt exist, create project
    (cd ../$PRJ_NAME; petalinux-create project -n $PRJ_NAME --template zynq)
fi

(cd ../$PRJ_NAME; petalinux-config --get-hw-description=$XSA_FILE)
