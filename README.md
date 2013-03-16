CyanogenMod 10 device configuration for Galaxy Mini 2 (GT-S6500D).
Currently Maintained by TheWhisp

http://forum.xda-developers.com/showthread.php?t=2012939

How to build:
-------------

Initialize repo:

    repo init -u git://github.com/CyanogenMod/android.git -b jellybean
    repo sync

Compile:

    . build/envsetup.sh && lunch cm_jena-userdebug
    make bacon -j8
