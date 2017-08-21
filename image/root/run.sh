#!/bin/sh

dnf update --assumeyes &&
    adduser user &&
    dnf update --assumeyes &&
    dnf clean all