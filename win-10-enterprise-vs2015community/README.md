# Windows 10 enterprise with vs2015 community

https://app.vagrantup.com/senglin/boxes/win-10-enterprise-vs2015community
Share folder is mounted in `C:\vagrant`.

## Requirements
Relies on `winrm` plugin:
```sh
vagrant plugin install winrm
```

## Troubleshooting

### conflicting dependencies fog-core
Ubuntu Bionic 18.04 ships Vagrant `2.0.2` that has trouble installing `winrm` plugin.
Upgrade to `2.0.3` to solve the issue, sources:

- <https://github.com/dotless-de/vagrant-vbguest/issues/292#issuecomment-380521802>
- <https://github.com/devopsgroup-io/vagrant-hostmanager/issues/256#issuecomment-386260691>
