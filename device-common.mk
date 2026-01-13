#
# Copyright (C) 2019 The LineageOS Project
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

LOCAL_PATH := device/samsung/universal7870-common

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# OTA
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := true
PRODUCT_SHIPPING_API_LEVEL := 26

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Product Characteristics
PRODUCT_CHARACTERISTICS := phone

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/configs/permissions/com.samsung.permission.SSENSOR.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.samsung.permission.SSENSOR.xml

# AdvancedDisplay
PRODUCT_PACKAGES += \
    AdvancedDisplay

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.soundtrigger@2.2-impl \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libtinyalsa \
    libtinycompress

ifeq ($(TARGET_DEVICE_HAS_TFA_SEC_AUDIO_HAL),true)
#PRODUCT_PACKAGES += \
#    libaudioroute_sec_helper
else ifeq ($(TARGET_DEVICE_HAS_SEC_AUDIO_HAL),true)
#PRODUCT_PACKAGES += \
#    libaudioroute_sec_helper    
else
PRODUCT_PACKAGES += \
#    audio.primary.exynos7870

ifeq ($(TARGET_DEVICE_HAS_OSS_AUDIO_HAL),true)
# PRODUCT_PACKAGES += \
#    audio.primary.exynos7870
ifeq ($(TARGET_DEVICE_HAS_TFA_AMP),true)
PRODUCT_PACKAGES += \
    audio_amplifier.exynos7870 \
    libtfa98xx
endif
endif
endif

# Audio configuration
ifeq ($(TARGET_DEVICE_HAS_OSS_AUDIO_HAL),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration_oss.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml
else
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.common@1.0-helper \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    libion_exynos \
    libstagefright_shim \
    camera.samsungexynos7870 \
    libcamera_metadata_helper \
#    libcsc \
#    libhwjpeg \
#    libacryl \
    libgiantmscl \
    libGrallocWrapper \
    Camera2
    
# SoundPicker
PRODUCT_PACKAGES += \
    SoundPicker
    
# OMX
PRODUCT_PACKAGES += \
#    libstagefrighthw \
    libExynosOMX_Core \
    libExynosOMX_Resourcemanager \
    libOMX.Exynos.AVC.Decoder \
    libOMX.Exynos.AVC.Encoder \
    libOMX.Exynos.AVC.WFD.Encoder \
    libOMX.Exynos.HEVC.Decoder \
    libOMX.Exynos.HEVC.Encoder \
    libOMX.Exynos.HEVC.WFD.Encoder \
    libOMX.Exynos.MPEG4.Decoder \
    libOMX.Exynos.MPEG4.Encoder \
    libOMX.Exynos.VP8.Decoder \
    libOMX.Exynos.VP8.Encoder \
    libOMX.Exynos.VP9.Decoder \
    libOMX.Exynos.VP9.Encoder \
    libOMX.Exynos.WMV.Decoder

PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-impl \
    android.hardware.media.omx@1.0-service \
    libstagefright_omx

# C2 codecs
PRODUCT_PACKAGES += \
    libcodec2_soft_avcdec \
    libcodec2_soft_avcenc \
    libcodec2_soft_h263dec \
    libcodec2_soft_h263enc \
    libcodec2_soft_mpeg4dec \
    libcodec2_soft_mpeg4enc \
    libcodec2_soft_vp8dec \
    libcodec2_soft_vp8enc \
    libcodec2_soft_vp9dec \
    libcodec2_soft_vp9enc \
    libcodec2_soft_hevcdec \
    libcodec2_soft_hevcenc

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media/media_codecs_performance_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_c2.xml

# Camera configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/external_camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/external_camera_config.xml

# VNDK prebuilts
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-lite-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-full-v29.so

# Cas
PRODUCT_PACKAGES += \
    android.hardware.cas@1.2-service

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service  \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.renderscript@1.0-impl \
    libExynosHWCService \
    gralloc.exynos7870 \
    hwcomposer.exynos7870 \
    libhwc2on1adapter \
    libhwc2onfbadapter \
    libtinyxml \
    libion \
    libtinyxml

# ifeq ($(TARGET_DEVICE_HAS_SAMSUNG_SLSI_EXYNOS7870),true)
# # only for prebuilt bsp running on arm hwcomposer
# PRODUCT_PACKAGES += \
#    android.hardware.graphics.composer@2.1-service.universal7870
# else
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-service
# endif
    
# Memtrack
PRODUCT_PACKAGES += \
   android.hardware.memtrack@1.0-impl \
   android.hardware.memtrack@1.0-service \
#    memtrack.exynos7870

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service \
    vndservicemanager

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3-service.clearkey

# WideVine DRM setup
PRODUCT_PROPERTY_OVERRIDES += \
     drm.service.enabled = true

# Flat device tree for boot image
PRODUCT_HOST_PACKAGES += \
    dtbhtoolExynos

# FlipFlap
PRODUCT_PACKAGES += \
    FlipFlap

# Gatekeeper
ifeq ($(TARGET_DEVICE_HAS_HW_GATEKEEPER_BIOMETRICS),true)
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl:32 \
    android.hardware.gatekeeper@1.0-service.exynos7870
    
else ifeq ($(TARGET_DEVICE_HAS_HW_GATEKEEPER_COMMON),true)
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl:32 \
    android.hardware.gatekeeper@1.0-service.exynos7870
else
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software
endif

# Healthd
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service \
    chargeonlymode

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor
    
# Filesystem tools for resizing system partitions
PRODUCT_PACKAGES += \
    e2fsck_static \
    resize2fs_static

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sec_touchkey.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchscreen.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sec_touchscreen.kl

# Keymaster
ifeq ($(TARGET_DEVICE_HAS_SEC_KEYMASTER),true)
# android.hardware.keymaster@3.0-impl.exynos7870 with samsungs MDFPP keystore support
# NOTICE: works only with trusted devices

# android.hardware.keymaster@3.0-service.exynos7870 (arm only service)
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl.exynos7870 \
    android.hardware.keymaster@3.0-service.exynos7870
else
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service
endif

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.samsung

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.1-service.universal7870
    
# FastCharge
PRODUCT_PACKAGES += \
    vendor.lineage.fastcharge@1.0-service.samsung
    
# FlipFlap
PRODUCT_PACKAGES += \
    FlipFlap

# Touch features    
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc
    
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    netutils-wrapper-1.0

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images \
    lineage_charger_res_image

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service.exynos

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.5.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat \
    android.hardware.radio.config@1.2 \
    libxml2

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze
    
# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos7870 \
    init.baseband.rc \
    init.samsungexynos7870.rc \
    init.samsungexynos7870.usb.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc \
    init.wifi.rc \
    ueventd.samsungexynos7870.rc

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# Seccomp_policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
#    android.hardware.sensors@1.0-service \
    android.hardware.sensors@1.0-impl \
    libsensorndkbridge \
    libshim_sensorndkbridge

# Thermal
PRODUCT_PACKAGES += \
    thermal.exynos7870 \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service
    
# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/AVRCP.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/AVRCP.idc \
    $(LOCAL_PATH)/configs/idc/qwerty.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/configs/idc/qwerty2.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/qwerty2.idc

# Touch features
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Shims
PRODUCT_PACKAGES += \
    libexynoscamera_shim \
    libion_camerashim \
#     libstagefright_shim \
#     libcutils_shim_vendor
#     libstagefright_shim \
#     libcutils_shim_vendor

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service.legacy \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Graphics
# PRODUCT_PACKAGES += \
#     gralloc.exynos7870 \
#     libion_exynos \
#     libgiantmscl

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.vendor_security_patch=2022-03-01

# VNDK
PRODUCT_PACKAGES += \
    libgui_vendor

# Wifi
PRODUCT_PACKAGES += \
    macloader

# WiFi Display
PRODUCT_PACKAGES += \
    libnl

# Create symlink for camera HAL to match ro.hardware
PRODUCT_PACKAGES += \
    camera.samsungexynos7870

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk
    
# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/universal7870-common/universal7870-common-vendor.mk)
# Manually added blobs for 32-bit compatibility
PRODUCT_COPY_FILES += \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libion_exynos.so:$(TARGET_COPY_OUT_VENDOR)/lib/libion_exynos.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libstagefrighthw.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrighthw.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libexynoscamera.so:$(TARGET_COPY_OUT_VENDOR)/lib/libexynoscamera.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libexynoscamera3.so:$(TARGET_COPY_OUT_VENDOR)/lib/libexynoscamera3.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libstainkiller.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstainkiller.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libuniplugin.so:$(TARGET_COPY_OUT_VENDOR)/lib/libuniplugin.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libsensorlistener.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsensorlistener.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/camera.vendor.exynos7870.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/camera.vendor.exynos7870.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libyasalgo.so:$(TARGET_COPY_OUT_VENDOR)/lib/libyasalgo.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libcsc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcsc.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libacryl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacryl.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libhwjpeg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libhwjpeg.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libsensorndkbridge.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsensorndkbridge.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/android.frameworks.sensorservice@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.frameworks.sensorservice@1.0.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libcamera_client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcamera_client.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/android.frameworks.bufferhub@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.frameworks.bufferhub@1.0.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libbufferhub.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbufferhub.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libbufferhubqueue.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbufferhubqueue.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libpdx_default_transport.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpdx_default_transport.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libinput.so:$(TARGET_COPY_OUT_VENDOR)/lib/libinput.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/vendor.samsung_slsi.hardware.configstore-utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.samsung_slsi.hardware.configstore-utils.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/vendor.samsung_slsi.hardware.configstore@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.samsung_slsi.hardware.configstore@1.0.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libknox_remotedesktopclient.knox.samsung.so:$(TARGET_COPY_OUT_VENDOR)/lib/libknox_remotedesktopclient.knox.samsung.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libgui.so:$(TARGET_COPY_OUT_VENDOR)/lib/libgui.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libui.so:$(TARGET_COPY_OUT_VENDOR)/lib/libui.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libexpat.so:$(TARGET_COPY_OUT_VENDOR)/lib/libexpat.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libgiantmscl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libgiantmscl.so \
    device/samsung/universal7870-common/rootdir/etc/android.hardware.camera.provider@2.4-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.camera.provider@2.4-service.rc \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/gralloc.exynos7870.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/gralloc.exynos7870.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/android.hardware.sensors@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/android.hardware.sensors@1.0-impl.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/android.hardware.graphics.composer@2.1-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/android.hardware.graphics.composer@2.1-impl.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/hwcomposer.exynos7870.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/hwcomposer.exynos7870.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libhwc2on1adapter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libhwc2on1adapter.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libexynosutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libexynosutils.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libvndsecril-client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libvndsecril-client.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libaudio-ril.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudio-ril.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libfloatingfeature.so:$(TARGET_COPY_OUT_VENDOR)/lib/libfloatingfeature.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libsecnativefeature.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsecnativefeature.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libstdc++.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstdc++.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libexynosv4l2.so:$(TARGET_COPY_OUT_VENDOR)/lib/libexynosv4l2.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libexynosscaler.so:$(TARGET_COPY_OUT_VENDOR)/lib/libexynosscaler.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libexynosgscaler.so:$(TARGET_COPY_OUT_VENDOR)/lib/libexynosgscaler.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libGrallocWrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libGrallocWrapper.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libhwcutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libhwcutils.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libexynosdisplay.so:$(TARGET_COPY_OUT_VENDOR)/lib/libexynosdisplay.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libhdmi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libhdmi.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libvirtualdisplay.so:$(TARGET_COPY_OUT_VENDOR)/lib/libvirtualdisplay.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libmpp.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmpp.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libExynosHWCService.so:$(TARGET_COPY_OUT_VENDOR)/lib/libExynosHWCService.so \
    vendor/samsung/universal7870-common/proprietary/vendor/firmware/bcm4345C5_V0069.0172.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/BCM4345C5.hcd \
    vendor/samsung/universal7870-common/proprietary/vendor/firmware/cs35l40-dsp1-spk-prot.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/cs35l40-dsp1-spk-prot.bin \
    vendor/samsung/universal7870-common/proprietary/vendor/firmware/cs35l40-dsp1-spk-prot-calib.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/cs35l40-dsp1-spk-prot-calib.bin \
    vendor/samsung/universal7870-common/proprietary/vendor/firmware/cs35l40-dsp1-spk-prot.wmfw:$(TARGET_COPY_OUT_VENDOR)/firmware/cs35l40-dsp1-spk-prot.wmfw \
    vendor/samsung/universal7870-common/proprietary/vendor/firmware/mfc_fw.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mfc_fw.bin \
    vendor/samsung/universal7870-common/proprietary/vendor/firmware/fimc_is_lib.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/fimc_is_lib.bin \
    vendor/samsung/universal7870-common/proprietary/vendor/firmware/setfile_2p6_front.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/setfile_2p6_front.bin \
    vendor/samsung/universal7870-common/proprietary/vendor/firmware/setfile_2p6.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/setfile_2p6.bin \
    vendor/samsung/universal7870-common/proprietary/vendor/bin/hw/macloader:$(TARGET_COPY_OUT_VENDOR)/bin/hw/macloader \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/vendor.samsung.hardware.wifi@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.samsung.hardware.wifi@2.0.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/sensors.universal7870.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/sensors.universal7870.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/sensors.universal7870.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/sensors.exynos7870.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/memtrack.exynos7870.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/memtrack.exynos7870.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libbt-vendor.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbt-vendor.so \
    vendor/samsung/universal7870-common/proprietary/vendor/bin/hw/android.hardware.bluetooth@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.bluetooth@1.0-service \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/android.hardware.bluetooth@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/android.hardware.bluetooth@1.0-impl.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/vendor.samsung.hardware.bluetooth@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.samsung.hardware.bluetooth@2.0.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/audio.primary.exynos7870.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/audio.primary.exynos7870.so \
    vendor/samsung/universal7870-common/proprietary/vendor/bin/hw/android.hardware.audio@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.audio@2.0-service \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/android.hardware.audio@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/android.hardware.audio@2.0-impl.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/android.hardware.audio.effect@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/android.hardware.audio.effect@2.0-impl.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/vendor.samsung.hardware.audio@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.samsung.hardware.audio@1.0.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/android.hardware.audio.common@2.0-util.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.hardware.audio.common@2.0-util.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/android.hardware.audio.common-util.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.hardware.audio.common-util.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libvndsecril-client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libvndsecril-client.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libaudio-ril.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudio-ril.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libfloatingfeature.so:$(TARGET_COPY_OUT_VENDOR)/lib/libfloatingfeature.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libsecaudioinfo.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsecaudioinfo.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libsamsungDiamondVoice.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungDiamondVoice.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/librecordalive.so:$(TARGET_COPY_OUT_VENDOR)/lib/librecordalive.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libpreprocessing_nxp.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpreprocessing_nxp.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libSamsungPostProcessConvertor.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSamsungPostProcessConvertor.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libtinyalsa.so:$(TARGET_COPY_OUT_VENDOR)/lib/libtinyalsa.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libaudioroute.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudioroute.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libtinycompress.so:$(TARGET_COPY_OUT_VENDOR)/lib/libtinycompress.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libaudioutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudioutils.so \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/hw/vendor.samsung.hardware.audio@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/vendor.samsung.hardware.audio@1.0-impl.so \
    device/samsung/universal7870-common/configs/init/android.hardware.audio@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.audio@2.0-service.rc \
    device/samsung/universal7870-common/configs/init/android.hardware.bluetooth@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.bluetooth@1.0-service.rc \
    vendor/samsung/universal7870-common/proprietary/vendor/lib/libwifi-hal.so:$(TARGET_COPY_OUT_VENDOR)/lib/libwifi-hal.so \
    vendor/samsung/universal7870-common/proprietary/vendor/bin/hw/android.hardware.sensors@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.sensors@1.0-service \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/init/android.hardware.sensors@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.sensors@1.0-service.rc \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/bcmdhd_clm.blob:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_clm.blob \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/bcmdhd_sta.bin_c5:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_sta.bin_c5 \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/bcmdhd_apsta.bin_c5:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_apsta.bin_c5 \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/bcmdhd_mfg.bin_c5:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_mfg.bin_c5 \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/nvram.txt_c5:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/nvram.txt_c5 \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/nvram.txt_c5:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/nvram.net.txt \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/bcmdhd_sta.bin_c5_blob:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_sta.bin_c5_blob \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/bcmdhd_apsta.bin_c5_blob:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_apsta.bin_c5_blob \
    vendor/samsung/universal7870-common/proprietary/vendor/etc/wifi/bcmdhd_mfg.bin_c5_blob:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd_mfg.bin_c5_blob

# Clean up properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1 \
    ro.control_privapp_permissions=disable
