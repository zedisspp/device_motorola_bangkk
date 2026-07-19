#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bangkk device
$(call inherit-product, device/motorola/bangkk/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bangkk_g-user 15 V1TCS35H.88-16-6 9ef38-182918 release-keys MV-301" \
    BuildFingerprint=motorola/bangkk_g/bangkk:15/V1TCS35H.88-16-6/9ef38-182918:user/release-keys \
    DeviceProduct=bangkk_g

# Axion stuff
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER := Zediss
AXION_PROCESSOR := Snapdragon_695®
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true
TARGET_NEEDS_DOZE_FIX := true
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120