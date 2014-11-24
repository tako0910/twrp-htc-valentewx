USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/valentewx/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := valentewx
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_ARCH_VARIANT := armv7-a-neon

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80400000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := valentewx_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/msm8960
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01700000

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf
TARGET_USES_QCOM_BSP := true

# Flags
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Graphics
USE_OPENGL_RENDERER := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/htc/valentewx/configs/egl.cfg

# Power
TARGET_POWERHAL_VARIANT := cm

# Filesystem (cat /proc/emmc)
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
# Pre-HBOOT 2.16
# BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
# This only plays a role in build-time checks, so there's no real concern that
# partition sizes aren't identical for both variants.
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13153337344
BOARD_FLASH_BLOCK_SIZE := 131072

# Use power button as select in recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 36
# lun files are located at /sys/devices/platform/msm_hsusb/gadget/lun%d/file
# but we need to add/remove symlinks to them based on whether there are one
# or two drives available to UMS. This is handled in init.
TARGET_USE_CUSTOM_LUN_FILE_PATH := /lun%d/file

# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# SELinux
BOARD_SEPOLICY_DIRS += device/htc/valentewx/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file_contexts \
    file.te \
    hci_init.te \
    healthd.te \
    init_shell.te \
    init.te \
    keystore.te \
    kickstart.te \
    mediaserver.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    wpa_socket.te \
    wpa.te

# TWRP
DEVICE_RESOLUTION := 540x960
TW_FLASH_FROM_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INCLUDE_DUMLOCK := true
TW_INCLUDE_JB_CRYPTO := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
BOARD_RECOVERY_BLDRMSG_OFFSET := 2048
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_DEVICE_MODULES := chargeled
