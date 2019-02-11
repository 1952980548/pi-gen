#!/bin/bash -e

if [[ "$WAIT_FOR_NETWORK" == 1 ]]; then
	install -v -d					"${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d"
	install -v -m 644 files/wait.conf		"${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d/"
fi

install -m 644 files/ipv6.conf "${ROOTFS_DIR}/etc/modprobe.d/ipv6.conf"

ln -sf /dev/null "${ROOTFS_DIR}/etc/systemd/network/99-default.link"
