# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/j2lte/j2lte-vendor.mk)

LOCAL_PATH := device/samsung/j2lte

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Packages
PRODUCT_PACKAGES += \
    power.exynos3

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Dalvik/HWUI VM specific for devices with 1024 MB of RAM
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-hwui-heap.mk)

# Prop Overides

# ADB
ADDITIONAL_DEFAULT_PROPERTIES += \
ro.adb.secure=0	\
ro.secure=0	\
persist.sys.root_access=3	\
ro.allow.mock.location=0	\
ro.debuggable=1	\
persist.sys.usb.config=mtp,adb

# OTG
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true
