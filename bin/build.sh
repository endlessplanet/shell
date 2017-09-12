#!/bin/sh

TAG=endlessplanet/shell:$(git rev-parse --verify HEAD) &&
    docker login --username ${DOCKERHUB_USERNAME} --password ${DOCKERHUB_PASSWORD}
    docker image build --tag ${TAG} image &&
    docker image push ${TAG}