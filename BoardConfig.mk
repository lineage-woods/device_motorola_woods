#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from common mt6737-common
-include device/motorola/mt6737-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/woods

# Assert
TARGET_OTA_ASSERT_DEVICE := Moto_E4,Moto E4,moto_e4,e4,woods,woods_f

# Kernel
TARGET_KERNEL_SOURCE := kernel/motorola/mt6737
TARGET_KERNEL_CONFIG := woods_defconfig

# bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Graphics
BOARD_EGL_CFG := /vendor/motorola/woods/proprietary/vendor/lib/egl/egl.cfg

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/motorola/woods/BoardConfigVendor.mk
