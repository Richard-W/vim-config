#!/bin/bash

pushd $(dirname $0)/.. &> /dev/null

echo -n "-- Updating submodules..."
git submodule update --init --recursive
if [ $? == 0 ]; then
	printf "\tSuccess\n"
else
	printf "\tFailure\n"
	exit 1
fi

ycm_flags=""

function ycm_flag() {
	ycm_flags="$ycm_flags $1"
}

function ycm_flag_if_cmd() {
	cmd=$1
	flag=$2
	echo "-- Checking $cmd command"
	path=$(command -v $cmd)
	if [[ -n $path ]]; then
		echo "-- Found: $path"
		ycm_flags="$ycm_flags $flag"
	else
		echo "-- Not found"
	fi
}

echo "-- Building YCM..."

ycm_flag --clang-completer
ycm_flag_if_cmd rustup --rust-completer

python3 ./bundle/YouCompleteMe/install.py $ycm_flags
if [ $? == 0 ]; then
	printf "\t\tSuccess\n"
else
	printf "\t\tFailure\n"
	exit 1
fi

popd &> /dev/null
