#!/bin/sh

MASTER_BRANCH="${1}" &&
    git fetch upstream "${MASTER_BRANCH}" &&
    git checkout -b scratch/$(uuidgen)