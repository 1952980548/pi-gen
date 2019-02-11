#!/bin/bash -e

echo ${RPI_HOSTNAME} > "${ROOTFS_DIR}/etc/hostname"
chmod 644 "${ROOTFS_DIR}/etc/hostname"

sed -ri "/^127.0.1.1/d;" "${ROOTFS_DIR}/etc/hosts"
printf "%-16s%s\n" 127.0.1.1 ${RPI_HOSTNAME} | tee -a "${ROOTFS_DIR}/etc/hosts"
