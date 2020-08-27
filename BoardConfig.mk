#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from sdm660-common
-include device/xiaomi/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/tulip

# Assert
TARGET_OTA_ASSERT_DEVICE := tulip

#APEX
TARGET_ENABLE_APEX := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

#Encryption
TARGET_ENABLE_ENCRYPTION := true

# Kernel
TARGET_KERNEL_CONFIG := tulip_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm660

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/manifest.xml

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 2147483648

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# Security patch level
VENDOR_SECURITY_PATCH := 2020-04-05

# Inherit the proprietary files
-include vendor/xiaomi/tulip/BoardConfigVendor.mk
