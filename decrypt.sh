#!/bin/bash

# common processing
script_dir=$(cd $(dirname $0);pwd)
. $script_dir/common_process.sh

# check ext
case $filename in
*[^\.zip])
        echo "[ERROR] not zip file can not be unzip"
        exit
esac

# unzip
cd $filepath && unzip -qeP $password $filename

# finish
echo "$target has been zip decryption"

# show files (for mac)
open $filepath

exit

