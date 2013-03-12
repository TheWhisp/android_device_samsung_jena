AOKP Jelly Bean (4.2.2) device configuration for Galaxy Mini 2 (GT-S6500D).
Currently maintained by TheWhisp

http://forum.xda-developers.com/showthread.php?t=2012939

How to build:
-------------

Initialize repo:

    repo init -u https://github.com/AOKP/platform_manifest.git -b jb-mr1
    repo sync

Compile:

    . build/envsetup.sh && lunch aokp_jena-userdebug
    make bacon -j8
