#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/polaris

# Assert
TARGET_OTA_ASSERT_DEVICE := polaris

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Kernel
TARGET_KERNEL_CONFIG := polaris_user_defconfig

# DTBO partition definitions
#BOARD_PREBUILT_DTBOIMAGE := device/google/wahoo-kernel/dtbo.img
#BOARD_DTBOIMG_PARTITION_SIZE := 8388608

BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

# Inherit from the proprietary version
-include vendor/xiaomi/polaris/BoardConfigVendor.mk
