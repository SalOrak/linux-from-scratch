#!/bin/bash

drive=""

# List block devices
lsblk --list -o MODEL,KNAME,PATH,SIZE,MOUNTPOINT,PARTTYPENAME

echo "Elige un disco: "
read -r drive

if [[ -e $drive ]]; then
    echo "El disco seleccionado es $drive"
else 
    echo "ERROR: Disco no existe"
    exit 1
fi 

if [[ 1 -eq 0 ]]; then
    exit 0
fi

# Crear sistema de ficheros ext4
mkfs --verbose --type ext4 $drive 

# Crear swap
# mkswap $drive

# Mount point
mkdir -v -p $LFS
if [[  ]]
mount -v -t ext4 $drive $LFS

