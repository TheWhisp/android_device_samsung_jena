echo "Obtaining build directory..."
rootdirectory="$PWD"
cd $rootdirectory
cd frameworks/base
echo "Applying frameworks/base patches..."
git am $rootdirectory/device/samsung/jena/patches/frameworks_base/*.patch
cd $rootdirectory
cd external/bluetooth/bluez
echo "Applying external/bluetooth/bluez patches..."
git am $rootdirectory/device/samsung/jena/patches/external_bluetooth_bluez/*patch
cd $rootdirectory