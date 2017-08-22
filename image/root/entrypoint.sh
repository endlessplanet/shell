#!/bin/sh

echo "${ID_RSA}" > /home/user/.ssh/id_rsa &&
    chmod 0600 /home/user/.ssh/id_rsa &&
    mkdir /workspace/${PROJECT_NAME} &&
    cd "/workspace/${PROJECT_NAME}" &&
    git init &&
    git config user.name "${USERNAME}" &&
    git config user.email "${EMAIL}" &&
    git remote add origin "${URL}" &&
    cp /opt/docker/post-commit.sh .git/hooks/post-commit &&
    sleep infinity