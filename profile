source ~/.bashrc

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

# prepend local bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Android SDK
#export PATH=${PATH}:~/android-sdk-macosx/tools
export PATH=${PATH}:~/Sites/adt-bundle-mac/sdk/tools

# MySQL
#export PATH=$PATH:/usr/local/mysql/bin
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/mysql/lib

# App Engine
#export PATH=/usr/local/google_appengine:$PATH

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/Sites/gocode
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
#export GOPATH=$HOME/Software/Go
#export PATH=$PATH:$HOME/Software/Go/bin

# Java/Play
export PATH=$PATH:~/Software/Java/play-2.0.3

# npm/node
export PATH=/usr/local/share/npm/bin:$PATH

# PostgreSQL
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH

# coreutils
# All commands have been installed with the prefix 'g'.
# If you really need to use these commands with their normal names, you
# can add a "gnubin" directory to your PATH from your bashrc like:
# PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

if [ -f `brew --prefix`/etc/bash_completion  ]; then
  . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
