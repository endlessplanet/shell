#!/bin/sh

dnf update --assumeyes &&
    dnf install --assumeyes git openssh-clients meld &&
    adduser user &&
    mkdir /home/user/.ssh &&
    chmod 0700 /home/user/.ssh &&
    chown user:user /home/user/.ssh &&
    mkdir /home/user/bin &&
    ls -1 /opt/docker/bin | while read FILE
    do
        cp /opt/docker/${FILE} /home/user/bin/${FILE%.*} &&
            chmod 0500 /home/user/bin/${FILE%.*}
    done &&
    chown --recursive user:user /home/user/bin &&
    mkdir /workspace &&
    chown user:user /workspace &&
    dnf update --assumeyes &&
    dnf clean all