#!/bin/bash

cd $(dirname $0)/../bundle

for dir in ./*; do
	echo "Updating $dir"
	pushd $dir
	git checkout master
	git pull
	git submodule update --init --recursive
	popd
done
