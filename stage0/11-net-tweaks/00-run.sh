#!/bin/bash -e

install -m 644 files/ipv6.conf "${ROOTFS_DIR}/etc/modprobe.d/ipv6.conf"

ln -sf /dev/null "${ROOTFS_DIR}/etc/systemd/network/99-default.link"

echo ${RPI_HOSTNAME} > "${ROOTFS_DIR}/etc/hostname"
chmod 644 "${ROOTFS_DIR}/etc/hostname"

sed -ri "/^127.0.1.1/d;" "${ROOTFS_DIR}/etc/hosts"
printf "%-16s%s\n" 127.0.1.1 ${RPI_HOSTNAME} | tee -a "${ROOTFS_DIR}/etc/hosts"
