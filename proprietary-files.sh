#!/bin/sh

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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

MANUFACTURER=samsung
DEVICE=i9300

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb root
sleep 3

adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/bin/rild
adb pull /system/lib/hw/vendor-camera.exynos4.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/camera.smdk4x12.so
adb pull /system/lib/hw/sensors.smdk4x12.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/hw/sensors.smdk4x12.so
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/libril.so
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/lib/libsec-ril.so
adb pull /system/usr/idc/sec_touchscreen.idc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/idc/sec_touchscreen.idc
adb pull /system/usr/keylayout/sec_touchkey.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/usr/keylayout/sec_touchkey.kl
adb pull /system/vendor/firmware/SlimISP_GD.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/vendor/firmware/SlimISP_GD.bin
adb pull /system/vendor/firmware/SlimISP_ZD.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/system/vendor/firmware/SlimISP_ZD.bin


(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
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

LOCAL_PATH := vendor/samsung/i9300

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/bin/rild:system/bin/rild

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/lib/hw/camera.smdk4x12.so:system/lib/hw/vendor-camera.exynos4.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/hw/sensors.smdk4x12.so:system/lib/hw/sensors.smdk4x12.so

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/lib/libril.so:system/lib/libril.so \\
    \$(LOCAL_PATH)/proprietary/system/lib/libsec-ril.so:system/lib/libsec-ril.so

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/usr/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

PRODUCT_COPY_FILES += \\
    \$(LOCAL_PATH)/proprietary/system/vendor/firmware/SlimISP_GD.bin:system/vendor/firmware/SlimISP_GD.bin \\
    \$(LOCAL_PATH)/proprietary/system/vendor/firmware/SlimISP_ZD.bin:system/vendor/firmware/SlimISP_ZD.bin

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor.mk
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

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/__MANUFACTURER__/__DEVICE__/overlay

\$(call inherit-product, vendor/__MANUFACTURER__/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/BoardConfigVendor.mk
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

EOF

./../../../device/samsung/smdk4412-common/proprietary-files.sh
