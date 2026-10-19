#
# SPDX-License-Identifier: GPL-2.0
#
# Copyright (c) 2013-2026 Igor Pecovnik, igor@armbian.com
#
# This file is a part of the Armbian Build Framework
# https://github.com/armbian/build/
#
# LCSC Lushan Pi K230 (立创庐山派 K230)
# Canaan K230 RISC-V dual-core C910 SoC, 512MB LPDDR4,
# SD card, eMMC, CSI, LCD (ST7701), HDMI, USB, WiFi/BT, GbE
#
BOARD_NAME="LCSC Lushan Pi K230"
BOARD_VENDOR="lckfb"
BOARDFAMILY="k230"
BOARD_MAINTAINER=""
INTRODUCED="2024"

# Kernel
KERNEL_TARGET="edge"
KERNEL_TEST_TARGET="edge"

# U-Boot
BOOTCONFIG="k230_canmv_lckfb_defconfig"

# Device tree (built from canaan/k230-canmv-lckfb-lcd.dts)
BOOT_FDT_FILE="canaan/k230-canmv-lckfb-lcd.dtb"

# Serial console (ttyS0 at 115200; k230 dts stdout-path = serial0 = uart0 @91400000)
SERIALCON="ttyS0:115200"
DEFAULT_CONSOLE="serial"

# No dedicated video output for headless; LCD is optional via overlay
HAS_VIDEO_OUTPUT="no"

# File system layout
IMAGE_PARTITION_TABLE="gpt"
BOOTFS_TYPE="ext4"