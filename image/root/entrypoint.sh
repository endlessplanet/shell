#!/bin/sh

echo "${ID_RSA}" > /home/user/.ssh/id_rsa &&
    chmod 0600 /home/user/.ssh/id_rsa &&
    mkdir /workspace/${PROJECT_NAME} &&
    cd "/workspace/${PROJECT_NAME}" &&
    git init &&
    git config user.name "${USERNAME}" &&
    git config user.email "${EMAIL}" &&
    if [ ! -z "${ORIGIN}" ]
    then
        git remote add origin "${ORIGIN}"
    fi &&
    if [ ! -z "${REPORT}" ]
    then
        git remote add report "${REPORT}"
    fi &&
    if [ ! -z "${UPSTREAM}" ]
    then
        git remote add upstream "${UPSTREAM}" &&
            git remote set-url --push upstream no_push
    fi &&
    cp /opt/docker/post-commit.sh .git/hooks/post-commit &&
    sleep infinity