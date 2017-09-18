#!/bin/sh

cd /workspace/$(ls -1 /workspace) &&
    export PATH=${HOME}/bin:${PATH} &&
    bash