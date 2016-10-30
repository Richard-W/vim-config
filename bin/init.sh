#!/bin/bash

pushd $(dirname $0)/.. &> /dev/null

echo -n "-- Updating submodules..."
git submodule update --init --recursive --depth=1
if [ $? == 0 ]; then
	printf "\tSuccess\n"
else
	printf "\tFailure\n"
	exit 1
fi

echo -n "-- Building YCM..."
./bundle/YouCompleteMe/install.py \
	--clang-completer \
	--racer-completer
if [ $? == 0 ]; then
	printf "\t\tSuccess\n"
else
	printf "\t\tFailure\n"
	exit 1
fi

popd &> /dev/null
