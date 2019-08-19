#!/bin/sh

set -xe

# Build Raspberry Pi image
docker build -t mruettgers/rpi-knx2mqtt -f targets/rpi/Dockerfile .
