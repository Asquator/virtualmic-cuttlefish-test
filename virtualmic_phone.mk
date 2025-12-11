# Inherit the Cuttlefish product first.
$(call inherit-product, device/google/cuttlefish/vsoc_x86_64/phone/aosp_cf.mk)

# Your product metadata
PRODUCT_NAME := virtualmic_phone
PRODUCT_DEVICE := vsoc_x86_64_only
PRODUCT_BRAND := AOSPVirtualMic
PRODUCT_MODEL := AOSPVirtualMic Cuttlefish x86_64

# Add the SERVICE to PRODUCT_PACKAGES. The build system will now correctly
# trace its dependency to the VINTF fragment because of the 'proprietary' flag.
#PRODUCT_PACKAGES += \
#    libvirtualmic \
#    virtualmic_service

# This part is correct and working. It tells the FRAMEWORK to ALLOW your HAL.
#DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
#    device/google/cuttlefish/vsoc_x86_64_only/virtualmic_phoneauframework_compatibility_matrix.xml

# This ensures your new matrix is placed in /vendor/etc/vintf/compatibility_matrix.xml
#DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += device/google/cuttlefish/vsoc_x86_64_only/virtualmic_phone/device_compatibility_matrix.xml

# Your Soong namespace
PRODUCT_SOONG_NAMESPACES += hardware/interfaces/audio/aidl/default/virtual-mic
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false


BOARD_VENDOR_SEPOLICY_DIRS += device/google/cuttlefish/vsoc_x86_64_only/virtualmic_phone/sepolicy/daemon
