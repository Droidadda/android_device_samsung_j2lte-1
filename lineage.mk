# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/j2lte/full_j2lte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j2lte
PRODUCT_NAME := lineage_j2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J200
PRODUCT_MANUFACTURER := samsung
