#!/usr/bin/env bash

TMP_ROOTFS="/tmp/rootfs"
DEFAULT_USER="ubuntu"

function install_ui_requirements()
{
    sudo apt install -y --no-install-recommends linux-generic
}

function install_unity_desktop()
{
    sudo apt install -y --no-install-recommends ubuntu-desktop
    # fixes some lightdm errors
    sudo apt install -y libpam-kwallet5 libpam-kwallet4 libpam-gnome-keyring
    # check 3D support:
    # /usr/lib/nux/unity_support_test -p
    # makes dash/lens search gives results, http://askubuntu.com/a/37860/209022
    sudo apt install -y unity-lens-applications
    sudo apt install -y gnome-terminal
    sudo apt install -y indicator-session
    # enables auto-login
    sudo cp -r $TMP_ROOTFS rootfs/etc/lightdm/lightdm.conf.d/ /etc/lightdm/ # FIXME: TMP_ROOTFS and rootfs
    # fixes locales
    sudo cp $TMP_ROOTFS rootfs/etc/default/locale /etc/default/ # FIXME: same thing
}

function install_xfce_desktop()
{
    install_ui_requirements
    sudo apt install -y --no-install-recommends xubuntu-desktop
    sudo apt install -y --no-install-recommends xfce4-terminal
}

function install_core()
{
    sudo apt install -y git git-flow
}

function install_vim()
{
    sudo apt install -y vim
    cp $TMP_ROOTFS/home/$DEFAULT_USER/.vimrc /home/$DEFAULT_USER/
}

function install_eclipse_neon_46()
{
    # Installing Eclipse CDT
    sudo apt install -y openjdk-8-jre
    download_dir=$HOME/Downloads/
    mkdir -p $download_dir
    eclipse_version="eclipse-cpp-neon-R-linux-gtk-x86_64.tar.gz"
    eclipse_archive_path="$download_dir$eclipse_version"
    echo "Downloading Eclipse CDT"
    wget --quiet --continue "http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/neon/R/eclipse-cpp-neon-R-linux-gtk-x86_64.tar.gz" -O $eclipse_archive_path
    sudo tar -xzf "$eclipse_archive_path" --directory /opt/
    sudo ln -sfn /opt/eclipse/eclipse /usr/local/bin/
}
