#!/bin/bash -e
if [ "${ENABLE_SSH}" == "1" ]; then
        systemctl enable ssh
else
        systemctl disable ssh
fi
# in pkg raspberrypi-sys-mods
systemctl enable regenerate_ssh_host_keys

