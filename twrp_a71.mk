#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a71 device
$(call inherit-product, device/samsung/a71/device.mk)

PRODUCT_DEVICE := a71
PRODUCT_NAME := twrp_a71
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A715
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a71naxx-user 13 TP1A.220624.014 A715FXXSBDXB1 release-keys"

BUILD_FINGERPRINT := samsung/a71naxx/qssi:13/TP1A.220624.014/A715FXXSBDXB1:user/release-keys
