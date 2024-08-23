DEVICE_PATH := device/samsung/a24

# For building with minimal manifest
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
SOONG_ALLOW_MISSING_DEPENDENCIES := true
ALLOW_MISSING_DEPENDENCIES := true

# A/B
AB_OTA_UPDATER := false

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# For MTK Chipsets only
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a24
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 396

# Kernel config
BOARD_BOOTIMG_HEADER_VERSION := 2
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_BASE := 0x3fff8000
BOARD_RAMDISK_OFFSET := 0x26f08000
BOARD_KERNEL_TAGS_OFFSET := 0x07c88000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := \
        bootopt=64S3,32N2,64N2 \
        loop.max_part=7 \
        androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS += \
        --header_version $(BOARD_BOOTIMG_HEADER_VERSION) \
        --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
        --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
        --dtb $(TARGET_PREBUILT_DTB)
TARGET_FORCE_PREBUILT_KERNEL := true
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
BOARD_KERNEL_SEPARATED_DTBO := 
BOARD_INCLUDE_RECOVERY_DTBO := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 83886080
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 83886080
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_SYSTEMIMAGE_PARTITION_TYPE := erofs
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := erofs
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_ODM := odm

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := mtk_dynamic
BOARD_MTK_DYNAMIC_SIZE := 9122611200
BOARD_MTK_DYNAMIC_PARTITION_LIST := \
    system \
    vendor \
    product \
    odm \
    vendor_dlkm \
    system_ext

# System as root
BOARD_ROOT_EXTRA_FOLDERS := \
    carrier \
    data_mirror \
    efs \
    sec_efs \
    keyrefuge \
    linkerconfig \
    metadata \
    omr \
    optics \
    prism \
    spu
BOARD_SUPPRESS_SECURE_ERASE := true

# Platform
TARGET_BOARD_PLATFORM := mt6789

# Assert
TARGET_OTA_ASSERT_DEVICE := a24

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current

# Change the ramdisk compression format to lz4-legacy
BOARD_RAMDISK_USE_LZ4 := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_USE_NEW_MINADBD := true
TW_NO_REBOOT_BOOTLOADER := true
TW_DEVICE_VERSION := Galaxy A24Koneko
TW_NO_LEGACY_PROPS := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_PYTHON := true
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_LPTOOLS := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FASTBOOTD := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_APEX := false
TW_EXCLUDE_DEFAULT_USB_INIT := true
TWRP_EVENT_LOGGING := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_LOAD_VENDOR_MODULES := "goodix_ts_berlin.ko"
TW_LOAD_VENDOR_BOOT_MODULES := true
TW_LOAD_VENDOR_MODULES_EXCLUDE_GKI := true

# Device
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone22/temp"
TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/battery/capacity"
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_MAX_BRIGHTNESS := 400
TW_DEFAULT_BRIGHTNESS := 200
TW_FRAMERATE := 60
TW_USE_SAMSUNG_HAPTICS := true

# StatusBar
TW_CUSTOM_CPU_POS := "300"
TW_CUSTOM_CLOCK_POS := "60"
TW_CUSTOM_BATTERY_POS := "790"
TW_STATUS_ICONS_ALIGN := center

# Crypto
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false
