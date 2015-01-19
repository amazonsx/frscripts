#!/bin/bash
rm -rf /etc/qemu-ifup
rm -rf /etc/qemu-ifdown
ln -s $HOME/backpack/qscript/qemu-ifup /etc/qemu-ifup
ln -s $HOME/backpack/qscript/qemu-ifdown /etc/qemu-ifdown
