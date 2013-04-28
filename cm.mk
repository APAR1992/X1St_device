## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := x1st

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/vivo/x1st/device_x1st.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x1st
PRODUCT_NAME := cm_x1st
PRODUCT_BRAND := vivo
PRODUCT_MODEL := x1st
PRODUCT_MANUFACTURER := vivo
