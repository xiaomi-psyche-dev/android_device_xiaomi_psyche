#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from psyche device
$(call inherit-product, device/xiaomi/psyche/device.mk)

PRODUCT_NAME := lineage_psyche
PRODUCT_DEVICE := psyche
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2112123AG

TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true

AXION_CAMERA_REAR_INFO := 48,13,5
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := mtkpapa
AXION_PROCESSOR := Qualcomm_Snapdragon_870_5G

BYPASS_CHARGE_TOGGLE_PATH ?= /sys/class/power_supply/battery_input_suspend

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="psyche_global-user 13 TKQ1.221114.001 V816.0.8.0.TLDMIXM release-keys" \
    BuildFingerprint=Xiaomi/psyche_global/psyche:13/TKQ1.221114.001/V816.0.8.0.TLDMIXM:user/release-keys
