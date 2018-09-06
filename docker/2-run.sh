#!/usr/bin/env bash

port=8080
registry=$(minishift openshift registry)
project=myproject
app=jws-docker
tag=${registry}/${project}/${app}:latest

docker run -p ${port}:${port} ${tag}
