#!/bin/bash

# common processing
script_dir=$(cd $(dirname $0);pwd)
. $script_dir/common_process.sh

# unzip
cd $filepath && unzip -qeP $password $filename

# finish
echo "$target has been zip decryption by '$password'"
exit

