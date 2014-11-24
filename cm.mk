# Release name
PRODUCT_RELEASE_NAME := valentewx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/valentewx/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := valentewx
PRODUCT_NAME := cm_valentewx
PRODUCT_BRAND := htc
PRODUCT_MODEL := J
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=valentewx
