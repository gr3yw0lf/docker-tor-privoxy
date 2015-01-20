#!/bin/sh

VER=$(cat ./version)

# to clear the intermediate images...
# docker build -t gr3yw0lf/privacy:${VER} --rm .
docker build -t gr3yw0lf/privacy:${VER} .
