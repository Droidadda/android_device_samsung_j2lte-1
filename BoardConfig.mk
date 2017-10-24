# Define Local path
LOCAL_PATH := device/samsung/j2lte

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Platform
BOARD_VENDOR := samsung

TARGET_BOARD_PLATFORM := exynos3
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos3475

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal3475

MALLOC_SVELTE := true

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl/egl.cfg

# PowerHAL
TARGET_POWERHAL_VARIANT := exynos3

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init
TARGET_INIT_VENDOR_LIB := libinit_j2lte
TARGET_UNIFIED_DEVICE := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_BOARD := SYSMAGIC000K 	
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j2lte/dtb.img
TARGET_KERNEL_CONFIG := lineage_j2lte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j2lte

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x360000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x360000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x30000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x130000000
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.universal3475
TARGET_OTA_ASSERT_DEVICE := j2lte,j2ltedd,j2ltedx
