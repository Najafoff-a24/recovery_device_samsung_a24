LOCAL_PATH := device/samsung/a24

PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

PRODUCT_PACKAGES += \
    bootctrl.mt6789 \
    bootctrl.mt6789.recovery

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 31

# API
PRODUCT_SHIPPING_API_LEVEL := 32

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

PRODUCT_PACKAGES += \
    shrink

# erofs utils
PRODUCT_HOST_PACKAGES += \
    liberofs-dt \
    make_erofs-dt \
    dump.erofs-dt \
    fsck.erofs-dt

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)
