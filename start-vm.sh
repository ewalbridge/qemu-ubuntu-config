#!/bin/bash

ID=$1
HWADDR0=$(cat /opt//var/vm$ID/hw0.addr)

qemu-system-x86_64 \
	-boot d \
	-hda /opt//var/vm$ID/hd0.img \
	-m 1024 \
	-net nic,model=e1000,vlan=0,macaddr=$HWADDR0 \
	-net tap,ifname=tap$ID,vlan=0,script=no,downscript=no \
	-vnc :$ID \
	-monitor unix:/opt//var/vm$ID/manage,server,nowait \
	-monitor telnet:0.0.0.0:950$ID,server,nowait \
	&
	
