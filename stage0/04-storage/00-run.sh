#!/bin/bash -e
install -v -m 644 files/fstab 		"${ROOTFS_DIR}/etc/fstab"

if [ "${USE_QEMU}" = "1" ]; then
	echo "enter QEMU mode"
	install -m 644 files/90-qemu.rules "${ROOTFS_DIR}/etc/udev/rules.d/"
	echo "leaving QEMU mode"
fi
