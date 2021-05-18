#!/bin/sh

# git pull origin master
# Bachup nvim
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
