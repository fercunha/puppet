#!/bin/bash

version=$(date +%Y%m%d)

echo $version > ./version.txt

docker build -t puppet-server-cunha:${version} . 