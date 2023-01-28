#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from haydn device
$(call inherit-product, device/xiaomi/haydn/device.mk)

# Inherit some common Arrow OS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true
USE_PIXEL_CHARGER := true
USE_GAPPS := true

#ARROW
DEVICE_MAINTAINER := Puneet Gautam
ARROW_BUILD_TYPE := OFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_haydn
PRODUCT_DEVICE := haydn
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11X Pro 5G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_CHARACTERISTICS := nosdcard