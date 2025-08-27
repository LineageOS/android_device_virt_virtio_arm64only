#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff.
TARGET_EXCLUDES_AUDIOFX := true
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from device
$(call inherit-product, device/virt/virtio_arm64only/device.mk)

PRODUCT_NAME := lineage_virtio_arm64only
PRODUCT_DEVICE := virtio_arm64only
PRODUCT_BRAND := VirtIO
PRODUCT_MANUFACTURER := VirtIO
PRODUCT_MODEL := VirtIO arm64-only

PRODUCT_VENDOR_PROPERTIES += \
    ro.soc.manufacturer=$(PRODUCT_MANUFACTURER) \
    ro.soc.model=$(PRODUCT_DEVICE)
