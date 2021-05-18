#!/bin/sh

mkdir -p ~/dotfiles && cd ~/dotfiles
git clone git@github.com:orientdang/dotfiles.git ./
# git pull origin master
# Bachup nvim
echo "COPYING ~/.config/nvim"
# rm -rf .config && mkdir .config && mkdir .config/nvim 
# cp -Rf ~/.config/nvim/ .config/nvim/
cp -Rf .config/nvim/ ~/.config/nvim/

# Every files are list in this directory will be automatically  
# sync TO source eg. ~/.bash_profile

# these files/directory will not be sync
exclude=(".git .config")

for file in ~/dotfiles/.[^.]*; do
	filename="$(basename "$file")"
	if [[ ! " ${exclude[*]} " =~ "$filename" ]]; then
		echo "COPYING ${filename}....."
		cp -rf ${filename} ~/${filename} 
	fi
done

echo "============================="
echo "Install DONE"
