#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gta4xlwifi device
$(call inherit-product, device/samsung/gta4xlwifi/device.mk)

PRODUCT_DEVICE := gta4xlwifi
PRODUCT_NAME := omni_gta4xlwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P610
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_gta4xlwifi-userdebug 13 TQ3A.230901.001 b20f15d02b test-keys"

BUILD_FINGERPRINT := samsung/lineage_gta4xlwifi/gta4xlwifi:13/TQ3A.230901.001/b20f15d02b:userdebug/test-keys
