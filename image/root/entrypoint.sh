#!/bin/sh

sudo chown --recursive user:user /workspace/$(ls -1 /workspace)
    cd "/workspace/$(ls -1 /workspace)" &&
    sleep infinity