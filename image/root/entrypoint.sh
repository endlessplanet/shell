#!/bin/sh

echo "${ID_RSA}" > /home/user/.ssh/id_rsa &&
    chmod 0600 /home/user/.ssh/id_rsa &&
    chown user:user /home/user/.ssh/id_rsa &&
    sleep infinity