#!/bin/bash

# config
PASSWORD_FILE="password.txt"

# get target
target=$1
if [ ! -n "$target" ]; then
        echo "[USAGE] encrypt.sh|decrypt.sh FILEPATH"
        exit
fi
if [ ! -e $target ]; then
        echo "[ERROR] $target does not exist"
        exit
fi

# vals
filename=${target##*/}
filepath=${target%/*}
basename=${filename%.*}
password_filepath=$script_dir/$PASSWORD_FILE

# get password
if [ ! -e "$password_filepath" ]; then
        echo "[USAGE] write zip password in '$PASSWORD_FILE'"
        exit
fi
password=`cat $password_filepath`
if [ ! -n "$password" ]; then
        echo "[ERROR] password is empty"
        exit
fi
