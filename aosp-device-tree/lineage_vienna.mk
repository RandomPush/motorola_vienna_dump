#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vienna device
$(call inherit-product, device/motorola/vienna/device.mk)

PRODUCT_DEVICE := vienna
PRODUCT_NAME := lineage_vienna
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 50 neo
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vienna_g_sys-user 15 V1UI35M.11-39-5 81bce release-keys"

BUILD_FINGERPRINT := motorola/vienna_g_sys/vienna:15/V1UI35M.11-39-5/81bce:user/release-keys
