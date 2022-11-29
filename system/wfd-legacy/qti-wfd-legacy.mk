# Copyright (C) 2022 Paranoid Android
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

TARGET_WFD_COMPONENT_VARIANT := wfd-legacy

DEVICE_FRAMEWORK_MANIFEST_FILE += device/qcom/common/system/wfd-legacy/configs/vintf/framework_manifest.xml

PRODUCT_PACKAGES += \
    libnl

PRODUCT_BOOT_JARS += \
    WfdCommon

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libqdMetaData \
    libqdMetaData.system

# Media
PRODUCT_PACKAGES += \
    libaacwrapper

# Get non-open-source specific aspects.
$(call inherit-product-if-exists, vendor/qcom/common/system/wfd-legacy/wfd-legacy-vendor.mk)
