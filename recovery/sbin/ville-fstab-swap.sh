#!/sbin/sh

# Ville HBOOT 2.16.xxxx transitions the device to /data/media storage.
# Check the bootloader version and provide the correct fstab.

BTLDR_MAINVER=$(getprop ro.bootloader | cut -c 1)
BTLDR_SUBVER=$(getprop ro.bootloader | cut -c 3-4)

if [ $BTLDR_MAINVER -eq 2 ] && [ $BTLDR_SUBVER -ge 16 ]; then
    mv /etc/recovery.fstab /etc/recovery.fstab.old
    mv /etc/recovery.fstab.dm /etc/recovery.fstab
fi
