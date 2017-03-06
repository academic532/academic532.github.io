#!/bin/bash

# compile resources/dev
cd resources/dev/src
gitbook init
gitbook install
gitbook build
mv _book/* ../

# compile resources/wiki
cd ../../wiki/src
gitbook init
gitbook install
gitbook build
mv _book/* ../

# compile resources/ops
cd ../../ops/src
gitbook init
gitbook install
gitbook build
mv _book/* ../

# build site
jekyll build
