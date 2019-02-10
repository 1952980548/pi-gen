#!/bin/bash -e

echo "root:root" | chpasswd
usermod --pass='*' root

for GRP in input spi i2c gpio; do
        groupadd -f -r $GRP
done

