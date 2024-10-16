#!/bin/bash -x

git submodule update --init

cd oneTBB
git checkout v2021.13.0
cd ../pbbsbench
git checkout eigen-mailbox
cd ../
