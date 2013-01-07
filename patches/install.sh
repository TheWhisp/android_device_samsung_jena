# This script automatically installs all patches needed for devices supported by Jellaxy
# Concept by Rashed97, reviewed by Bytecode, some minor updates by TheWhisp
# How to install: 1) cd ~/<path>/<to>/<source>/ 2) ./device/samsung/jena/patches/install.sh

echo "Obtaining build directory..."
rootdirectory="$PWD"
cd frameworks/native
echo "Applying frameworks/native patches..."
git am $rootdirectory/device/samsung/jena/patches/frameworks_native/*.patch
cd $rootdirectory
cd frameworks/base
echo "Applying frameworks/base patches..."
git am $rootdirectory/device/samsung/jena/patches/frameworks_base/*.patch
cd $rootdirectory

