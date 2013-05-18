# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/i777/full_i777.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := i777
PRODUCT_NAME := xylon_i777
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SGH-I777

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I777 TARGET_DEVICE=SGH-I777 BUILD_FINGERPRINT=samsung/SGH-I777/SGH-I777:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="SGH-I777-user 4.0.3 IML74K XXLPQ release-keys"

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aosp/prebuilt/hybrid_hdpi.conf:system/etc/beerbong/properties.conf \
   vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
