#!/bin/sh

VER="latest"

if [ -r ./version ]; then
	VER=$(cat ./version)
fi

docker run -p 8118:8118 $@ \
  -d gr3yw0lf/privacy:${VER} 

