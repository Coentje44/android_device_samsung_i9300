$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/i9300/i9300-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/i9300/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
	device/samsung/i9300/init.smdk4x12.rc:root/init.smdk4x12.rc \
	device/samsung/i9300/init.bt.rc:root/init.bt.rc \
	device/samsung/i9300/lpm.rc:root/lpm.rc \
	device/samsung/i9300/init.smdk4x12.usb.rc:root/init.smdk4x12.usb.rc \
        device/samsung/i9300/ueventd.smdk4x12.rc:root/ueventd.smdk4x12.rc \
	device/samsung/i9300/ueventd.smdk4x12.rc:recovery/ueventd.smdk4x12.rc

# GPS
PRODUCT_COPY_FILES += \
	device/samsung/i9300/configs/gps.xml:system/etc/gps.xml \
        device/samsung/i9300/configs/gps.conf:system/etc/gps.conf

# vold
PRODUCT_COPY_FILES += \
	device/samsung/i9300/configs/vold.fstab:system/etc/vold.conf

# wifi
PRODUCT_COPY_FILES += \
	device/samsung/i9300/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# connection stuff
PRODUCT_BUILD_PROP_OVERRIDES += \
	mobiledata.interfaces=pdp0,wlan0,gprs,ppp0

# ril class
PRODUCT_BUILD_PROP_OVERRIDES += ro.telephony.ril_class=Smdk4210RIL

# audio
PRODUCT_COPY_FILES += \
	device/samsung/i9300/configs/tiny_hw.xml:system/etc/sound/i9300
	device/samsung/i9300/configs/audio_policy.conf:system/etc/sound/audio_policy.conf

# HAL stuff
PRODUCT_PACKAGES += \
	libsf_dummy_client \
	audio.primary.exynos4 \
	audio.a2dp.default \
	audio.usb.default

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_i9300
PRODUCT_DEVICE := i9300
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
