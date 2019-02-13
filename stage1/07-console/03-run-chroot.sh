#!/bin/bash -e

#dpkg-reconfigure -f noninteractive keyboard-configuration
#dpkg-reconfigure -f noninteractive console-setup
setupcon --force --save-only -v
