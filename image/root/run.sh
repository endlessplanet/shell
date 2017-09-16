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
        cp /opt/docker/bin/${FILE} /home/user/bin/${FILE%.*} &&
            chmod 0500 /home/user/bin/${FILE%.*}
    done &&
    chown --recursive user:user /home/user/bin &&
    mkdir /workspace &&
    chown user:user /workspace &&
    cd /home/user &&
    git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1 &&
    chown --recursive user:user /home/user/.bash-git-prompt &&
    (cat > /home/user/.bashrc <<EOF
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh
EOF
    ) &&
    dnf update --assumeyes &&
    dnf clean all