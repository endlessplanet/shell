#!/bin/sh

git refresh &&
    git fetch upstream ${MASTER_BRANCH} &&
    git checkout -b scratch/$(uuidgen) &&
    git reset --soft upstream/${MASTER_BRANCH} &&
    git commit