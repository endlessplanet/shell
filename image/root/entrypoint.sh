#!/bin/sh

echo "${ID_RSA}" > ${HOME}/.ssh/id_rsa &&
    echo "${KNOWN_HOSTS}" > ${HOME}/.ssh/known_hosts &&
    chmod 0600 ${HOME}/.ssh/id_rsa ${HOME}/.ssh/known_hosts &&
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
    ln --symbolic --force ${HOME}/bin/post-commit .git/hooks/post-commit &&
    sleep infinity