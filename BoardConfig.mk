#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
-include device/xiaomi/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/tucana

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Assert
TARGET_OTA_ASSERT_DEVICE := tucana

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_tucana
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_tucana

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.tucana
TARGET_USES_FOD_ZPOS := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm6150
TARGET_KERNEL_CONFIG := tucana_defconfig

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from proprietary files
include vendor/xiaomi/tucana/BoardConfigVendor.mk
