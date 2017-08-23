#!/bin/sh

dnf update --assumeyes &&
    dnf install --assumeyes git openssh-clients meld &&
    adduser user &&
    chmod 0700 /home/user/.ssh &&
    chown user:user /home/user/.ssh &&
    dnf update --assumeyes &&
    dnf clean all