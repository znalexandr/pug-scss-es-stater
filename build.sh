#!/bin/bash

set -e

REGISTRY=685321914474.dkr.ecr.eu-west-3.amazonaws.com/cometrica/dmc/frontend-site

if [ -z "$VERSION" ]
then
      echo "VERSION is not set. Will use latest."
      VERSION=latest
else
      echo "Tag is set to $VERSION"
fi


echo "Building docker image with nodejs app"
docker build -f docker/Dockerfile -t $REGISTRY:$VERSION .

if [ $PUSH_TO_REPO == "true" ] ; then
    echo "Pushing docker images to registry"
    docker push $REGISTRY:$VERSION
fi
