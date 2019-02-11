#!/bin/bash -e

dpkg-reconfigure -f noninteractive tzdata
systemctl disable hwclock.sh

