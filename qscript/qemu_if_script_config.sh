#!/bin/bash
rm -rf /etc/qemu-ifup
rm -rf /etc/qemu-ifdown
ln -s $HOME/backpack/frscript/qscript/qemu-ifup /etc/qemu-ifup
ln -s $HOME/backpack/sfscript/qscript/qemu-ifdown /etc/qemu-ifdown
