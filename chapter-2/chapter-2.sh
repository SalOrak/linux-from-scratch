#!/bin/bash

cwd=$(pwd)
counter=1

check() {
    $@
    if [[ $? -ne 0 ]]; then
	# TODO: Implementar metodo para pasar una string a check
	echo "ERROR: Han ocurrido errores durante la fase X."
    else 
	echo "OK: El sistema cumple con los requisitos de la fase X" 
    fi
}

# LFS Variable
export LFS=/mnt/lfs

# Comprobar requisitos de sistema
check $cwd/host_system_requierements.sh  

# Montar el sistema de ficheros
check $cwd/create-file-system.sh 


