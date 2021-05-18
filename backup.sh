#!/bin/sh

# git pull origin master

# Bachup nvim
echo "Backup ~/.config/nvim"
rm -rf .config && mkdir .config && mkdir .config/nvim 
cp -R ~/.config/nvim/ .config/nvim/
cd .config/nvim && rm -rf .git .github .gitignore .README.md
cd ~/dotfiles

# Every files are list in this directory will be automatically  
# sync from source eg. ~/.bash_profile

# these files/directory will not be sync
exclude=(".git .config")

for file in ~/dotfiles/.[^.]*; do
	filename="$(basename "$file")"
	if [[ ! " ${exclude[*]} " =~ "$filename" ]]; then
		echo "copying ${filename}....."
		cp -rf ~/${filename} ${filename}
	fi
done

echo "============================="
echo "Backup files done, commiting...."

git add . -A
git commit -m "Backup at $(date)"
git push origin main
