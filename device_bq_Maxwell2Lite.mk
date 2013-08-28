$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
# $(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/bq/bq_Maxwell2Lite/bq_Maxwell2Lite-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/bq/bq_Maxwell2Lite/overlay

LOCAL_PATH := device/bq/bq_Maxwell2Lite
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Ramdisk files
PRODUCT_COPY_FILES += \
    device/bq/bq_Maxwell2Lite/ramdisk/charger:recovery/root/charger \
    device/bq/bq_Maxwell2Lite/ramdisk/fstab.rk30sdk:recovery/root/fstab.rk30sdk \
    device/bq/bq_Maxwell2Lite/ramdisk/misc.img:recovery/root/misc.img \
    device/bq/bq_Maxwell2Lite/ramdisk/readahead_list.txt:recovery/root/readahead_list.txt \
    device/bq/bq_Maxwell2Lite/ramdisk/rk30xxnand_ko.ko.3.0.8+:recovery/root/rk30xxnand_ko.ko.3.0.8+ \
    device/bq/bq_Maxwell2Lite/ramdisk/rk30xxnand_ko.ko.3.0.36+:recovery/root/rk30xxnand_ko.ko.3.0.36+ \
    device/bq/bq_Maxwell2Lite/ramdisk/ueventd.rk30board.rc:recovery/root/ueventd.rk30board.rc \
    \
    device/bq/bq_Maxwell2Lite/ramdisk/etc/firmware/WIFI_RAM_CODE:recovery/root/etc/firmware/WIFI_RAM_CODE \
    \
    device/bq/bq_Maxwell2Lite/ramdisk/res/codectest.pcm:recovery/root/res/codectest.pcm \
    device/bq/bq_Maxwell2Lite/ramdisk/res/mmctester.sh:recovery/root/res/mmctester.sh \
    device/bq/bq_Maxwell2Lite/ramdisk/res/send_cmd_pipe.sh:recovery/root/res/send_cmd_pipe.sh \
    device/bq/bq_Maxwell2Lite/ramdisk/res/test_config.cfg:recovery/root/res/test_config.cfg \
    device/bq/bq_Maxwell2Lite/ramdisk/res/udisktester.sh:recovery/root/res/udisktester.sh \
    device/bq/bq_Maxwell2Lite/ramdisk/res/wifi.sh:recovery/root/res/wifi.sh \
    device/bq/bq_Maxwell2Lite/ramdisk/res/WIFI_RAM_CODE:recovery/root/res/WIFI_RAM_CODE \
    device/bq/bq_Maxwell2Lite/ramdisk/res/wlan.ko:recovery/root/res/wlan.ko \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/test.wav:recovery/root/res/images/test.wav \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_0.png:recovery/root/res/images/charger/battery_0.png \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_1.png:recovery/root/res/images/charger/battery_1.png \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_2.png:recovery/root/res/images/charger/battery_2.png \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_3.png:recovery/root/res/images/charger/battery_3.png \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_4.png:recovery/root/res/images/charger/battery_4.png \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_5.png:recovery/root/res/images/charger/battery_5.png \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_charge.png:recovery/root/res/images/charger/battery_charge.png \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_fail.png:recovery/root/res/images/charger/battery_fail.png \
    device/bq/bq_Maxwell2Lite/ramdisk/res/images/charger/battery_full.png:recovery/root/res/images/charger/battery_full.png \
    \
    device/bq/bq_Maxwell2Lite/ramdisk/sbin/codec_test:recovery/root/sbin/codec_test \
    device/bq/bq_Maxwell2Lite/ramdisk/sbin/eio:recovery/root/sbin/eio \
    device/bq/bq_Maxwell2Lite/ramdisk/sbin/iwlist:recovery/root/sbin/iwlist \
    device/bq/bq_Maxwell2Lite/ramdisk/sbin/mkdosfs:recovery/root/sbin/mkdosfs \
    device/bq/bq_Maxwell2Lite/ramdisk/sbin/pcba_core:recovery/root/sbin/pcba_core \
    device/bq/bq_Maxwell2Lite/ramdisk/sbin/readahead:recovery/root/sbin/readahead \
    device/bq/bq_Maxwell2Lite/ramdisk/sbin/resize2fs:recovery/root/sbin/resize2fs \
    \
    device/bq/bq_Maxwell2Lite/ramdisk/system/etc/firmware/fw_RK901a0.bin:recovery/root/system/etc/firmware/fw_RK901a0.bin \
    device/bq/bq_Maxwell2Lite/ramdisk/system/etc/firmware/fw_RK901a2.bin:recovery/root/system/etc/firmware/fw_RK901a2.bin \
    device/bq/bq_Maxwell2Lite/ramdisk/system/etc/firmware/fw_RK903b2.bin:recovery/root/system/etc/firmware/fw_RK903b2.bin \
    device/bq/bq_Maxwell2Lite/ramdisk/system/etc/firmware/MTK_MT6622_E2_Patch.nb0:recovery/root/system/etc/firmware/MTK_MT6622_E2_Patch.nb0 \
    device/bq/bq_Maxwell2Lite/ramdisk/system/etc/firmware/nvram_RK901.txt:recovery/root/system/etc/firmware/nvram_RK901.txt \
    device/bq/bq_Maxwell2Lite/ramdisk/system/etc/firmware/nvram_RK903_26M.cal:recovery/root/system/etc/firmware/nvram_RK903_26M.cal \

# $(call inherit-product, build/target/product/full.mk)

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# This device is mdpi.  However the platform doesn't
# currently contain all of the bitmaps at mdpi density so
# we do this little trick to fall back to the hdpi version
# if the mdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_CHARACTERISTICS := tablet

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
#PRODUCT_PACKAGES += \
#    LiveWallpapers \
#    LiveWallpapersPicker \
#    VisualizationWallpapers \
#    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

PRODUCT_PROPERTY_OVERRIDES += \
    sys.mem.max_hidden_apps=10

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_bq_Maxwell2Lite
PRODUCT_DEVICE := bq_Maxwell2Lite
