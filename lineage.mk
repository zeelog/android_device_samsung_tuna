#
# Copyright 2013 The Android Open-Source Project
# Copyright 2017 The LineageOS Open-Source Project
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
# Release name
PRODUCT_RELEASE_NAME := GN-GSM

# Boot animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 480

# Since the first thing in PRODUCT_COPY_FILES takes precedence, organize some 'overrides' like this.
$(call inherit-product, device/samsung/tuna/overrides.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"

# Inherit from tuna device
$(call inherit-product, device/samsung/tuna/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME         := lineage_tuna
PRODUCT_DEVICE       := tuna
PRODUCT_BRAND        := Google
PRODUCT_MODEL        := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_PACKAGES += \
    Stk
