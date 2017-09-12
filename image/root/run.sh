#!/bin/sh

dnf update --assumeyes &&
    dnf install --assumeyes git openssh-clients meld &&
    echo ALPHA 0100 &&
    adduser user &&
    echo ALPHA 0200 &&
    mkdir /home/user/.ssh &&
    echo ALPHA 0300 &&
    chmod 0700 /home/user/.ssh &&
    echo ALPHA 0400 &&
    chown user:user /home/user/.ssh &&
    echo ALPHA 0500 &&
    mkdir /home/user/bin &&
    echo ALPHA 0600 &&
    ls -1 /opt/docker/bin | while read FILE
    do
        cp /opt/docker/${FILE} /home/user/bin/${FILE%.*} &&
        echo ALPHA 0610 &&
            chmod 0500 /home/user/bin/${FILE%.*} &&
            echo ALPHA 0620
    done &&
    echo ALPHA 0700 &&
    chown --recursive user:user /home/user/bin &&
    echo ALPHA 0800 &&
    mkdir /workspace &&
    echo ALPHA 0900 &&
    chown user:user /workspace &&
    echo ALPHA 1000 &&
    dnf update --assumeyes &&
    dnf clean all