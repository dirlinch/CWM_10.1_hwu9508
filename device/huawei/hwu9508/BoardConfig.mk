# Copyright (C) 2007 The Android Open Source Project
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

# inherit from the proprietary version
#include vendor/huawei/u9508/BoardConfigVendor.mk

# Platform
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
CM_VERSION := 10.1.3_unofficial_hwu9508
BOARD_VENDOR := huawei
TARGET_BOARD_PLATFORM := k3v2oem1
TARGET_SOC := k3v2

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_SPECIFIC_HEADER_PATH := device/huawei/hwu9508/overlay/include

# kernel
BOARD_KERNEL_CMDLINE := console=ttyS0 vmalloc=384M k3v2_pmem=1 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnvm1),p14(modemnvm2),p15(system),p16(cache),p17(cust),p18(userdata);mmcblk1:p1(ext_sdcard)
BOARD_KERNEL_PAGESIZE := 2048 
#TARGET_PREBUILT_KERNEL := device/huawei/hwu9508/kernel
TARGET_KERNEL_SOURCE := kernel/huawei/hwu9508
TARGET_KERNEL_CONFIG := cyanogenmod_hwu9508_defconfig
           
# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_INITRC := device/huawei/hwu9508/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/huawei/hwu9508/recovery/etc/recovery.fstab
DEVICE_RESOLUTION := 720x1280
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CUSTOM_GRAPHICS := device/huawei/hwu9508/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"


# USB
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_MTP_DEVICE := "/dev/mtp"
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5926551552
BOARD_FLASH_BLOCK_SIZE := 131072


#Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_PMEM := true
BOARD_EGL_CFG := device/huawei/hwu9508/configs/egl.cfg

# HWComposer
BOARD_USES_HWCOMPOSER := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# Wifi 
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/hwu9508/bluetooth

## Audio
BOARD_USES_GENERIC_AUDIO := true
#TARGET_PROVIDES_LIBAUDIO := true
#BOARD_PREBUILT_LIBAUDIO := true
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_QCOM_AUDIO_V2 := true
#BUILD_WITHOUT_PV := false

## Lights
#TARGET_PROVIDES_LIBLIGHTS := true

# RIL
#BOARD_RIL_CLASS := ../../../device/huawei/hwu9508/ril/

# Camera
USE_CAMERA_STUB := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# FM Radio
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := tavarua

# Gps


# HDMI
#TARGET_HAVE_HDMI_OUT := true

TARGET_OTA_ASSERT_DEVICE := hwu9508,U9508,u9508,U9508B,hwu9508B,u9508B

