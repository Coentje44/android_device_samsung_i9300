## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, vendor/samsung/i9300/proprietary/Android.mk)

# Release name
PRODUCT_RELEASE_NAME := i9300

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9300/device_i9300.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9300
PRODUCT_NAME := cm_i9300
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung
