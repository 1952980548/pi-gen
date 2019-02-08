#!/bin/bash -e

sed -i "s/DEBIAN_VERSION/${DEBIAN_VERSION}/g" "${ROOTFS_DIR}/etc/apt/sources.list"
sed -i "s/DEBIAN_VERSION/${DEBIAN_VERSION}/g" "${ROOTFS_DIR}/etc/apt/sources.list.d/raspi.list"
sed -i "s/ staging\>//g" "${ROOTFS_DIR}/etc/apt/sources.list.d/raspi.list"

on_chroot << EOF
apt-get update
apt-get -y dist-upgrade
apt-get clean
EOF
