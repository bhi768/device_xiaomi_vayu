#
# Copyright (C) 2018-2021 XtendedOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common XtendedOS configurations
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# GAPPS
$(call inherit-product, vendor/gapps/common/common-vendor.mk)
XTENDED_BUILD_VARIANT := GAPPS

PRODUCT_NAME := xtended_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 11 RKQ1.200826.002 V12.5.7.0.RJUMIXM release-keys" \
    PRODUCT_NAME=vayu_global \
    PRODUCT_MODEL=M2102J20SI

BUILD_FINGERPRINT := Xiaomi/vayu_global/vayu:11/RKQ1.200826.002/V12.5.7.0.RJUMIXM:user/release-keys

# XtendedOS additions
DEVICE_MAINTAINER := bhi768
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

