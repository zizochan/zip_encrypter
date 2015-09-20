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
pushd $filepath > /dev/null
zip -qeP $password $basename.zip $filename;
popd > /dev/null

# trash (for mac)
mv $target ~/.Trash/

# finish
echo "$target has been zip encryption by '$password'"
exit

