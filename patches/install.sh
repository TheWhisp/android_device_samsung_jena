echo "I: Obtaining build directory..."
rootdirectory="$PWD"
cd $rootdirectory
cd build
echo "I: Applying build patches..."
git am $rootdirectory/device/samsung/jena/patches/android_build/*.patch
cd $rootdirectory