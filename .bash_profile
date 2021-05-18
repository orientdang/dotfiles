export ANDROID_HOME=/Users/dangnh/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$PATH:/Users/dangnh/Flutter/flutter/bin"
export PATH=${PATH}:/usr/local/mysql/bin/
export PATH=~/.npm-global/bin:$PATH
export PATH=/usr/lib/postgresql/X.Y/bin/:$PATH

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# php
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"

# python 3
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# autopep8
export PATH="$PATH:/Users/dangnh/Library/Python/3.9/bin"



export PATH="$HOME/.poetry/bin:$PATH"
