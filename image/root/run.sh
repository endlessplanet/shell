#!/bin/sh

dnf update --assumeyes &&
    adduser user &&
    mkdir /workspace &&
    chown user:user /workspace &&
    dnf update --assumeyes &&
    dnf clean all