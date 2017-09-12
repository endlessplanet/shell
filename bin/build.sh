#!/bin/sh

docker login --username ${DOCKERHUB_USERNAME} --password ${DOCKERHUB_PASSWORD}
    docker image build --tag endlessplanet/shell:$(git rev-parse --verify HEAD) image