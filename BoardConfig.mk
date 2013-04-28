USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/vivo/x1st/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON :=true
ARCH_ARM_HAVE_VFP := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_BOOTLOADER_BOARD_NAME := x1st

BOARD_KERNEL_CMDLINE := console=ttyMT3,921600n1 vmalloc=530M
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
partno:    start_sect   nr_sects  partition_name
emmc_p1:   00000400     00000002  "ebr1"
emmc_p2:   0000b800     00005000  "protect_f"
emmc_p3:   00010800     00005000  "protect_s"
emmc_p4:   0001dc00     00003000  "sec_ro"
emmc_p5:   00027c00     00096000  "apps"
emmc_p6:   000bdc00     00200000  "android"
emmc_p7:   002bdc00     00096000  "cache"
emmc_p8:   00353c00     00400000  "usrdata"
emmc_p9:   00753c00     015bfd00  "fat"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/vivo/x1st/kernel

TARGET_RECOVERY_INITRC := device/vivo/x1st/init.rc
TARGET_RECOVERY_FSTAB := device/vivo/x1st/recovery.fstab

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true

DEVICE_RESOLUTION :=720x1280
