#
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Camera
PRODUCT_PACKAGES += \
    Snap

# Features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.controls.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.controls.xml

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Screen density
PRODUCT_AAPT_CONFIG := xhdpi hdpi mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Rootdir
PRODUCT_PACKAGES += \
    fstab.enableswap

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/bootdevice/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/bootdevice/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 28
PRODUCT_TARGET_VNDK_VERSION := 28
