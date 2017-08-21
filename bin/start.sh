#!/bin/sh

docker \
    container \
    run \
    --detach \
    --cidfile shell.cid \
    endlessplanet/shell