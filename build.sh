#!/bin/bash

# Optimus Build Script

# Exports required stuff
export ARCH=arm
echo 'exporting Arch'
export SUBARCH=arm
echo 'exporting SubArch'
export CROSS_COMPILE=/home/jenkins/vfs/user_9/linaro/bin/arm-linux-androideabi-
echo 'exporting Linaro 4.9.4 toolchain'

# Clean Build
echo 'Cleaning build'
make clean && make mrproper

# Let the party start!
make falcon_defconfig
make -j4
