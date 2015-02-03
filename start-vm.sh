#!/bin/bash

qemu-system-x86_64 \
	-boot d \
	-hda ubuntu-14.04.1-server-amd64.img \
	-m 1024 \
	-net nic,model=e1000,vlan=0,macaddr=46:b8:11:7d:41:6a \
	-net tap,ifname=tap0,vlan=0,script=no,downscript=no \
	-vnc :1 \
	-monitor unix:/opt/monitor,server,nowait \
	#-monitor telnet:0.0.0.0:9500,server,nowait \
	#&
	
