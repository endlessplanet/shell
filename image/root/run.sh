#!/bin/sh

dnf update --assumeyes &&
    dnf install --assumeyes git openssh-clients meld &&
    adduser user &&
    mkdir /home/user/.ssh &&
    chmod 0700 /home/user/.ssh &&
    chown user:user /home/user/.ssh &&
    mkdir /workspace &&
    chown user:user /workspace &&
    dnf update --assumeyes &&
    dnf clean all