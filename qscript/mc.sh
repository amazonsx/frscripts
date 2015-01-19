#!/bin/bash
if [ $# -eq 0 ];then
	echo "Please input a tap device index."
	exit 1
fi

index=$1
tap_device="tap$index"
port="666$index"
echo "Attach VM with attach NIC DEVICE-$tap_device"
echo "MC LISTEN on Port $port"

qemu-system-x86_64 --enable-kvm -m 4096 -drive format=qcow2,file=/mnt/nfs1/centos65 \
	-vnc :$1 \
	-monitor stdio \
	-cpu Penryn,+nx -smp cpus=2 \
	-net nic,vlan=0 -net tap,ifname=$tap_device,vlan=0
	--incoming tcp:0:$port
