#!/bin/bash -e
sed "s/--autologin pi/--autologin ${FIRST_USER_NAME}/g" -i "${ROOTFS_DIR}/etc/systemd/system/autologin@.service"

ln -sf /etc/systemd/system/autologin@.service \
	"${ROOTFS_DIR}/etc/systemd/system/getty.target.wants/getty@tty1.service"
