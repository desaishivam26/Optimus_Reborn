#!/bin/bash

# Optimus Build Script

# Exports required stuff
export ARCH=arm
echo 'exporting Arch'
export SUBARCH=arm
echo 'exporting SubArch'
export CROSS_COMPILE=/home/jenkins/vfs/user_9/uber/bin/arm-eabi-
echo 'exporting UBER toolchain'

# Clean Build
echo 'Cleaning build'
make clean && make mrproper

# Let the party start!
echo 'Making config'
make falcon_defconfig
echo 'Compiling Kernel'
make -j4
