#!/bin/bash -e

install -v -d "${ROOTFS_DIR}//usr/local/share/nmct"
install -v -d "${ROOTFS_DIR}//usr/local/share/nmct/wallpaper"
install -v -m 644 files/CITY-1920x1200.jpg "${ROOTFS_DIR}//usr/local/share/nmct/wallpaper"

f="${ROOTFS_DIR}/etc/xdg/autostart/piwiz.desktop"
if [ -e "${f}" ] ; then
    mv "${f}" "${f}.disabled"
fi
