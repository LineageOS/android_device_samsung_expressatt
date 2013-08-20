#
# Copyright (C) 2013 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/expressatt/expressatt-vendor.mk)

VARIENT_MODEL := expressatt

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/expressatt/overlay
## common overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/d2-common/overlay-gsm

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Media profile
PRODUCT_COPY_FILES += \
       device/samsung/expressatt/media_profiles.xml:system/etc/media_profiles.xml

# scripts
PRODUCT_PACKAGES += \
    50bluetooth \
    60sensors \
    wifimac.sh \
    camera.MSM8960

# for sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.yas.enable=true

# d2-common
$(call inherit-product, device/samsung/d2-common/d2-common.mk)
