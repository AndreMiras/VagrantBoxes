#!/usr/bin/env bash

source /tmp/core_provision.sh
source /vagrant/custom_provision.sh

function main()
{
    # an update is automatically triggered at boot in Xenial
    # this is an issue because it locks dpkg
    sudo killall -KILL apt.systemd.daily
    install_core
    install_additional
}

main
