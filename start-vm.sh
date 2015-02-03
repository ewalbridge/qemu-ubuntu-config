#!/bin/bash

qemu-system-x86_64 \
	-monitor telnet:127.0.0.1:9500,server,nowait \
	-boot d -hda ubuntu-14.04.1-server-amd64.img \
	-m 1024 \
	-vnc :0 \
	-net nic,model=e1000,vlan=0,macaddr=46:b8:11:7d:41:6a \
	-net tap,ifname=tap0,vlan=0,script=no,downscript=no
	
