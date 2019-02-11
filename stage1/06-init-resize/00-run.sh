#!/bin/bash -e
install -v -m 755 files/resize2fs_once  "${ROOTFS_DIR}/etc/init.d/"

if [ "${USE_QEMU}" = "1" ]; then
	echo "enter QEMU mode"
	on_chroot <<< "systemctl disable resize2fs_once"
	echo "leaving QEMU mode"
else
	on_chroot <<< "systemctl enable resize2fs_once"
fi
