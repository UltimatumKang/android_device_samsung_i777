#
# Copyright (C) 2012 The CyanogenMod Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := SGH-I777

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i777/full_i777.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy kernel and modules
PRODUCT_COPY_FILES += \
	device/samsung/i777/prebuilt/kernel/i777/zImage:system/slimkernel/boot.img \
	device/samsung/i777/prebuilt/kernel/i777/zImage:kernel \
        device/samsung/i777/recovery.fstab:ramdisk.img \
        device/samsung/i777/recovery.fstab:recovery/root/etc/recovery.fstab \
	device/samsung/i777/prebuilt/kernel/i777/system/lib/modules/scsi_wait.ko:system/lib/modules/scsi_wait.ko \
	device/samsung/i777/prebuilt/kernel/i777/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	device/samsung/i777/prebuilt/kernel/i777/system/lib/modules/driver.ko:system/lib/modules/driver.ko

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i777
PRODUCT_NAME := slim_i777
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SGH-I777

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I777 TARGET_DEVICE=SGH-I777 BUILD_FINGERPRINT=samsung/SGH-I777/SGH-I777:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="SGH-I777-user 4.0.3 IML74K XXLPQ release-keys"
