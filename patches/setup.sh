echo "I: Obtaining build directory..."
rootdirectory="$PWD"
cd $rootdirectory
cd frameworks/native
echo "I: Applying frameworks/native patches..."
git am $rootdirectory/device/samsung/jena/patches/frameworks_native/*.patch
cd $rootdirectory
cd frameworks/base
echo "I: Applying frameworks/base patches..."
git am $rootdirectory/device/samsung/jena/patches/frameworks_base/*.patch
cd $rootdirectory
cd vendor/aokp
echo "I: Adding jena to lunch menu!"
git am $rootdirectory/device/samsung/jena/patches/vendor_aokp/*.patch
cd $rootdirectory
echo "I: Finished installing patches!"
read -p "Q: Lunch aokp_jena-userdebug / remove build directory / make bacon? (y/n) " response
if [ "$response" = "y" ]; then
  . build/envsetup.sh && lunch aokp_jena-userdebug && make clobber && make bacon -j4
else
  echo "Exiting... Lunch manaually!"
fi   