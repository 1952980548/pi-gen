#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	bootstrap ${DEBIAN_VERSION} "${ROOTFS_DIR}" http://raspbian.raspberrypi.org/raspbian/
fi
