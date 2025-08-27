#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from upper BoardConfig.mk
include device/virt/virtio_arm64only/BoardConfig.mk

# Kernel
TARGET_KERNEL_CONFIG_EXT += kernel/mainline/configs/fragments/y/arm64/pagesize-16k.config
