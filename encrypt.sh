#!/bin/bash

# common processing
script_dir=$(cd $(dirname $0);pwd)
. $script_dir/common_process.sh

# check ext
case $filename in
*\.zip)
	echo "[ERROR] zip file can not be zip"
	exit
esac

# zip
cd $filepath && zip -qeP $password $basename.zip $filename;

# trash (for mac)
mv $target ~/.Trash/

# finish
echo "$target has been zip encryption by '$password'"
exit

