#!/bin/sh

mkdir -p ~/dotfiles && cd ~/dotfiles
git clone git@github.com:orientdang/dotfiles.git ./
# git pull origin master
# Backup nvim
echo "COPYING ~/.config/nvim"
# rm -rf .config && mkdir .config && mkdir .config/nvim 
cp -Rf ~/.config/nvim/ .config/nvim/
cd .config/nvim && rm -rf .git .github .gitignore README.md
cd ~/dotfiles

# Every files are list in this directory will be automatically  
# sync from source eg. ~/.bash_profile
# these files/directory will not be sync
exclude=(".git .config")

for file in ~/dotfiles/.[^.]*; do
	filename="$(basename "$file")"
	if [[ ! " ${exclude[*]} " =~ "$filename" ]]; then
		echo "COPYING ${filename}....."
		cp -rf ~/${filename} ${filename}
	fi
done

echo "Backup files done, commiting...."
echo "============================="

git add . -A
git commit -m "Backup at $(date)"
git push origin main

# COPY TO TERMINAL TO RUN SCRIPT
# curl -sSL https://raw.githubusercontent.com/orientdang/dotfiles/main/backup.sh |sh

