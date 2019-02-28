# Ubuntu Bionic 64 bits VM

This virtual machine is used as a base fork for Ubuntu Bionic 64 base projects.
It's mostly a regular `ubuntu/bionic64` box with updated `memory` and `cpus` settings.

## Run
```
vagrant up
```

## What next
Update timezone:
```
sudo dpkg-reconfigure tzdata
