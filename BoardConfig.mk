#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Display density
TARGET_SCREEN_DENSITY := 480

# Inherit from sm6150-common
-include device/xiaomi/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/tucana

# Assert
TARGET_OTA_ASSERT_DEVICE := tucana

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_tucana
TARGET_RECOVERY_DEVICE_MODULES := libinit_tucana

# Kernel
TARGET_KERNEL_CONFIG := tucana_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55371083776
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736

# Inherit from the proprietary version
-include vendor/xiaomi/tucana/BoardConfigVendor.mk
