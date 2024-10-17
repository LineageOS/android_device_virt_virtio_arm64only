#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot manager
TARGET_BOOT_MANAGER ?= grub

# Inherit from common
include device/virt/virtio-common/BoardConfigCommon.mk

USES_DEVICE_VIRT_VIRTIO_ARM64ONLY := true
DEVICE_PATH := device/virt/virtio_arm64only

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# GRUB
TARGET_GRUB_EFI_PREBUILT := prebuilts/bootmgr/grub/device_files/virt/virtio_arm64/BOOTAA64.EFI

# Kernel
BOARD_KERNEL_CMDLINE += \
    console=ttyAMA0

BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_ARCH := arm64

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor
