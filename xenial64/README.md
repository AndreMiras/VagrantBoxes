# Ubuntu Xenial 64 bits VM

This virtual machine is used as a base fork for Ubuntu Xenial 64 base projects.
Simply copy the directory to start a new project based on this one.

    cp -r xenial64/ xenial64-project
    rm -rf xenial64-project/{rootfs,core_provision.sh}

We do not copy `rootfs/` directory and `core_provision.sh` file as they are
supposed to be shared across VM based on this master VM.

## What next
Update timezone:
```
sudo dpkg-reconfigure tzdata
```
