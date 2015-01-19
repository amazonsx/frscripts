#!/bin/bash
rm -rf /etc/qemu-ifup
rm -rf /etc/qemu-ifdown
ln -s $HOME/backpack/frscripts/qscript/qemu-ifup /etc/qemu-ifup
ln -s $HOME/backpack/fscripts/qscript/qemu-ifdown /etc/qemu-ifdown
