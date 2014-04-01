# Release name
PRODUCT_RELEASE_NAME := ville

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/ville/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ville
PRODUCT_NAME := cm_ville
PRODUCT_BRAND := htc
PRODUCT_MODEL := One S
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ville
