#!/bin/bash

registry=$(minishift openshift registry)
project=myproject
app=tomcat9-app
builder=tomcat9-builder
tag=${project}/${app}:latest
builder_tag=${project}/${builder}:latest

oc project ${project}
oc delete all --selector app=${app}
oc delete is ${app}
oc tag -d ${tag}
oc delete is ${builder}
oc tag -d ${builder_tag}
