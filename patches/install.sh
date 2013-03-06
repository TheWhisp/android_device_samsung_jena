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
cd frameworks/av
echo "Applying frameworks/av patches..."
git am $rootdirectory/device/samsung/jena/patches/frameworks_av/*.patch
cd $rootdirectory
