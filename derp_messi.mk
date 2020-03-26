# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/motorola/messi/messi-vendor.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device
$(call inherit-product, device/motorola/messi/device.mk)

# Boot Animtion
TARGET_BOOTANIMATION_HALF_RES := true

TARGET_GAPPS_ARCH := arm64


# Device identifiers
BUILD_FINGERPRINT := motorola/messi/messi:9/PCX29.10-33/60ac6:user/release-keys
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := messi
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := Moto Z3
PRODUCT_NAME := derp_messi
PRODUCT_RELEASE_NAME := messi

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=messi
