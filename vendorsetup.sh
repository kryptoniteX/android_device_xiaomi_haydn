echo 'Starting to clone stuffs needed to build for Haydn'

# Kernel
echo 'Cloning kernel tree [1/5]'
git clone --depth=1 https://github.com/Alucard-Storm/kernel_xiaomi_haydn.git -b twelve kernel/xiaomi/haydn

# Vendor
echo 'Cloning vendor tree [2/5]'
git clone --depth=1 https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn.git -b arrow13 vendor/xiaomi/haydn

# Firmware
echo 'Cloning firmware [3/5]'
git clone --depth=1 https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_haydn-firmware.git -b thirteen vendor/xiaomi/haydn-firmware

# Camera
echo 'Cloning MIUI Camera [4/5]'
git clone https://gitlab.com/Alucard_Storm/haydn-miuicamera -b twelve vendor/xiaomi/haydn-miuicamera

# Logging
echo 'Cloning system logging [5/5]'
rm -rf system/logging && git clone https://github.com/Astridxx/system_logging -b tiramisu system/logging

echo 'delete vendorsetup.sh from device tree once this is done'

rm -rf device/xiaomi/haydn/vendorsetup.sh

echo 'DONE'
