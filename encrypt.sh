#!/bin/bash

# common processing
script_dir=$(cd $(dirname $0);pwd)
. $script_dir/common_process.sh

# zip
cd $filepath && zip -qeP $password $basename.zip $filename;

# trash (for mac)
mv $target ~/.Trash/

# finish
echo "$target has been zip encryption by '$password'"
exit

