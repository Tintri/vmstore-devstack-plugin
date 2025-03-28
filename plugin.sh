#!/bin/bash

if [[ "$1" == "stack" && "$2" == "install" ]]; then
    rm -rf vmstore-cinder-driver
    git clone https://github.com/Tintri/vmstore-cinder-driver.git
    mkdir -p /opt/stack/cinder/cinder/volume/drivers/vmstore
    cp -rf vmstore-cinder-driver/* /opt/stack/cinder/cinder/volume/drivers/vmstore/
    rm -rf vmstore-cinder-driver
fi