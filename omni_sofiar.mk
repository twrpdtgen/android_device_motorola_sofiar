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

# Inherit from sofiar device
$(call inherit-product, device/motorola/sofiar/device.mk)

PRODUCT_DEVICE := sofiar
PRODUCT_NAME := omni_sofiar
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(8) power
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sofiar_retail-user 11 RPES31.Q4U-47-35-11 5f1af release-keys"

BUILD_FINGERPRINT := motorola/sofiar_retail/sofiar:11/RPES31.Q4U-47-35-11/5f1af:user/release-keys
