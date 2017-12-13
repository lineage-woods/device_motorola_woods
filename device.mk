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

DEVICE_PATH := device/motorola/woods

# call the proprietary setup
$(call inherit-product, vendor/motorola/woods/woods-vendor.mk)

# RAMDISK
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(DEVICE_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(DEVICE_PATH)/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    $(DEVICE_PATH)/rootdir/init.mt6735.power.rc:root/init.mt6735.power.rc

# Inherit from mt6737-common
$(call inherit-product, device/motorola/mt6737-common/mt6737.mk)
