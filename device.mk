#
# Copyright (C) 2019 The LineageOS Project
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

# Camera
PRODUCT_PACKAGES += \
    Snap

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni \
    init.qti.fm.sh

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    android.hidl.manager-V1.0-java

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-egis.idc:system/usr/idc/uinput-egis.idc

# LiveDisplay
PRODUCT_PACKAGES += \
    lineage.livedisplay@2.0-service-sdm \
    lineage.livedisplay@2.0-service-sysfs

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/uinput-egis.kl:system/usr/keylayout/uinput-egis.kl

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Trust HAL
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service

# VNDK
# Update this list with what each blob is actually for
PRODUCT_PACKAGES += \
    vndk_package
