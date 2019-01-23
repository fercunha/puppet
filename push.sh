#!/bin/bash

version=$(cat ./version.txt)

docker login

docker tag puppet-server-cunha:${version} fernandocunha/puppet-server-cunha:${version}
docker tag puppet-server-cunha:${version} fernandocunha/puppet-server-cunha:latest

docker push fernandocunha/puppet-server-cunha:${version}
docker push fernandocunha/puppet-server-cunha:latest