#!/bin/bash

qemu-system-x86_64 -boot d -hda ubuntu-14.04.1-server-amd64.img -m 1024 -vnc :0 -net nic,model=e1000,vlan=0 -net tap,ifname=tap0,vlan=0,script=no,downscript=no
