#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from OP4E21 device
$(call inherit-product, device/oppo/OP4E21/device.mk)

PRODUCT_DEVICE := OP4E21
PRODUCT_NAME := omni_OP4E21
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PDYM20
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user 11 RP1A.200720.011 1638467294046 release-keys"

BUILD_FINGERPRINT := OPPO/PDYM20/OP4E21:11/RP1A.200720.011/1638467294046:user/release-keys
