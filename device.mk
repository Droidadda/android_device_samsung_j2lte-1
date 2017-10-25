# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/j2lte/j2lte-vendor.mk)

LOCAL_PATH := device/samsung/j2lte

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal3475 \
    init.baseband.rc \
    init.carrier.rc \
    init.recovery.exynos3475.rc \
    init.rilchip.rc \
    init.rilcommon.rc \
    init.sec.boot.sh \
    init.universal3475.rc \
    init.universal3475.usb.rc \
    init.wifi.rc \
    ueventd.universal3475.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:/system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:/system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.webview.xml:/system/etc/permissions/android.software.webview.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml

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
