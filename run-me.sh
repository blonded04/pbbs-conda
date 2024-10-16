#!/bin/bash -x

set -e

bash scripts/choose-branches.sh
bash scripts/build-tbb.sh
bash scripts/run-all.sh $1
