#!/bin/bash -e

if ! id -u ${FIRST_USER_NAME} >/dev/null 2>&1; then
        adduser --disabled-password --gecos "" ${FIRST_USER_NAME}
fi

echo "${FIRST_USER_NAME}:${FIRST_USER_PASS}" | chpasswd

for GRP in adm dialout cdrom audio users sudo video games plugdev input gpio spi i2c netdev; do
  adduser $FIRST_USER_NAME $GRP
done
echo "${FIRST_USER_NAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/010_${FIRST_USER_NAME}-nopasswd
