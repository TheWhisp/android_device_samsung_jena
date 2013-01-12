# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

## Inherit proprietary blobs
$(call inherit-product, device/samsung/jena/proprietary/proprietary.mk)

## Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
	hwcomposer.msm7x27a

## OMX, media
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libstagefrighthw

## Filesystem tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

## Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils

## Other hardware
PRODUCT_PACKAGES += \
    lights.msm7x27a \
	camera.msm7x27a \
	gps.msm7x27a \
	power.msm7x27a

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
	hciconfig \
    hcitool

## Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

## Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

## Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/GT-S6500.rle:root/GT-S6500.rle \
	$(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom
   

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/prebuilt/etc/init/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/prebuilt/etc/init/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/etc/init/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilt/etc/init/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/prebuilt/etc/init/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

## Wi-Fi config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
	$(LOCAL_PATH)/prebuilt/bin/wlan_tool:system/bin/wlan_tool

## Vold config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab

## Binaries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/get_macaddrs:system/bin/get_macaddrs

## Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

## Keychar
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keychars/7x27a_kp.kcm.bin:system/usr/keychars/7x27a_kp.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin

## Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

## Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

## LPM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/media/Disconnected.qmg:system/media/Disconnected.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_batteryerror.qmg:system/media/battery_batteryerror.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_error.qmg:system/media/battery_error.qmg \
    $(LOCAL_PATH)/prebuilt/media/chargingwarning.qmg:system/media/chargingwarning.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_5.qmg:system/media/battery_charging_5.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_10.qmg:system/media/battery_charging_10.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_15.qmg:system/media/battery_charging_15.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_20.qmg:system/media/battery_charging_20.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_25.qmg:system/media/battery_charging_25.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_30.qmg:system/media/battery_charging_30.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_35.qmg:system/media/battery_charging_35.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_40.qmg:system/media/battery_charging_40.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_45.qmg:system/media/battery_charging_45.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_50.qmg:system/media/battery_charging_50.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_55.qmg:system/media/battery_charging_55.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_60.qmg:system/media/battery_charging_60.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_65.qmg:system/media/battery_charging_65.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_70.qmg:system/media/battery_charging_70.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_75.qmg:system/media/battery_charging_75.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_80.qmg:system/media/battery_charging_80.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_85.qmg:system/media/battery_charging_85.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_90.qmg:system/media/battery_charging_90.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_95.qmg:system/media/battery_charging_95.qmg \
    $(LOCAL_PATH)/prebuilt/media/battery_charging_100.qmg:system/media/battery_charging_100.qmg

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=2

## We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

## This is an MDPI device
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

## For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1
