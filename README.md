# dotfiles
## Install 
Run this in your terminal to sync your dotfiles to local environment: 

`curl -sSL https://raw.githubusercontent.com/orientdang/dotfiles/main/install.sh |sh`


## Backup
This script will copy files from paths you declared within this root directory, relatively.

Follow steps below to backup your dotfiles:

1. create file with path relative to dotfile's path you want to backup eg. `.tmux.conf`

2. run this in your terminal

`curl -sSL https://raw.githubusercontent.com/orientdang/dotfiles/main/backup.sh |sh`

That's it. Your files have now been saved.
