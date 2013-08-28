## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Maxwell 2 Lite

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/bq/bq_Maxwell2Lite/device_bq_Maxwell2Lite.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bq_Maxwell2Lite
PRODUCT_NAME := full_bq_Maxwell2Lite
PRODUCT_BRAND := bq
PRODUCT_MODEL := bq_Maxwell2Lite
PRODUCT_MANUFACTURER := bq
