#!/bin/bash -e

dpkg-reconfigure -f noninteractive keyboard-configuration
setupcon --force --save-only -v
