#!/bin/sh

docker stop $(cat shell.cid) &&
    docker rm --force --volumes $(cat shell.cid) &&
    rm --force shell.cid