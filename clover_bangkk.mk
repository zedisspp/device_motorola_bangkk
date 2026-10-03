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

# Inherit some common Clover stuff.
$(call inherit-product, vendor/clover/config/common_full_phone.mk)

PRODUCT_NAME := clover_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bangkk_g-user 15 V1TCS35H.88-16-8 2762f-8b2b3d release-keys MV-301" \
    BuildFingerprint=motorola/bangkk_g/bangkk:15/V1TCS35H.88-16-8/2762f-8b2b3d:user/release-keys \
    DeviceProduct=bangkk_g

# Clover stuff
CLOVER_MAINTAINER := Zediss
CLOVER_BUILDTYPE := Unnoficial
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GMS := true

# Updater
PRODUCT_PACKAGES += \
    Updater

PRODUCT_COPY_FILES += \
    vendor/clover/prebuilt/common/etc/init/init.clover-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.clover-updater.rc

# Signing
-include vendor/clover-priv/keys/keys.mk
