#!/bin/bash

cd $(dirname $0)/../bundle
git submodule update --init --recursive
git submodule foreach --recursive git reset --hard
git submodule foreach --recursive git clean -ffxd
