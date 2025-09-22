# sync_vm util

This is a script that can sync any folder with some machine at the network. 
It is originally thought to my personal use on FreeBSD-14.3-RELEASE, but it
should work fine on other OS.

install:
```sh
    git clone https://github.com/tarffie/sync-vm-utils.git ~/.local/opt
    chmod +x ~/.local/opt/sync-vm-utils/sync_vm.sh
    ln -sf $HOME/.local/opt/sync-vm-utils/sync_vm.sh ~/.local/bin/sync_vm
```
You could also use sudo or doas and link it to `/usr/local/bin/sync_vm`

usage:
```sh
    sync_vm <the_directory you wanna sync> <the address of the machine you want to be synced>
```

you can also set a machine on .ssh/config
example usage: 
```sh
    sync_vm $(pwd) ubuntu-docker-vm # previously setted on .ssh/config file
```

# TODO
For the future I'll also provide a script to find and connect to a VM inside 
the local network without needing to worry about dynamic ip changes
