USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/bq/bq_Maxwell2Lite/BoardConfigVendor.mk

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := bq_Maxwell2Lite
TARGET_BOARD_PLATFORM_GPU := mali400

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS

# Kernel
#TARGET_KERNEL_CONFIG := Maxwell2_Lite_defconfig
#TARGET_KERNEL_SOURCE := kernel/bq/bq_Maxwell2Lite

TARGET_PREBUILT_KERNEL := device/bq/bq_Maxwell2Lite/kernel

TARGET_BOOTLOADER_BOARD_NAME := bq_Maxwell2Lite
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 16384
#BOARD_KERNEL_CMDLINE := console=ttyFIQ0 androidboot.console=ttyFIQ0 init=/init

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 734003200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6049759232
BOARD_FLASH_BLOCK_SIZE := 16384

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

# Recovery options
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_PROVIDES_INIT_RC := true
TARGET_RECOVERY_INITRC := device/bq/bq_Maxwell2Lite/recovery/init.rc
TARGET_RECOVERY_PRE_COMMAND := "busybox dd if=/misc.img of=/dev/block/mtdblock0; sync"
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/bq/bq_Maxwell2Lite/recovery/rk_ota_from_target_files
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

TARGET_OTA_ASSERT_DEVICE := bq_Maxwell2Lite

# TWRP flags
DEVICE_RESOLUTION := 1024x600
RECOVERY_SDCARD_ON_DATA := true

TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true

# Graphics
#BOARD_EGL_CFG := device/bq/bq_Maxwell2Lite/config/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_DISABLE_TRIPLE_BUFFERING := true
TARGET_USES_ION := true
BOARD_USES_HDMI := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Web Rendering
ENABLE_WEBGL := true
#TARGET_FORCE_CPU_UPLOAD := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Wi-Fi
BOARD_WIFI_VENDOR := realtek

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl

BOARD_WLAN_DEVICE := rtl8192cu
WIFI_DRIVER_MODULE_NAME   := wlan
WIFI_DRIVER_MODULE_PATH   := "/system/lib/modules/wlan.ko"

WIFI_DRIVER_MODULE_ARG    := ""
WIFI_FIRMWARE_LOADER      := ""
WIFI_DRIVER_FW_PATH_STA   := ""
WIFI_DRIVER_FW_PATH_AP    := ""
WIFI_DRIVER_FW_PATH_P2P   := ""
WIFI_DRIVER_FW_PATH_PARAM := ""

TARGET_CUSTOM_WIFI := ../../hardware/realtek/wlan/libhardware_legacy/wifi/wifi_realtek.c

