source ~/.bashrc
# prepend local bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Android SDK
export PATH=${PATH}:~/android-sdk-macosx/tools

# MySQL
export PATH=$PATH:/usr/local/mysql/bin
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/mysql/lib

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/Software/Go
export PATH=$PATH:$HOME/Software/Go/bin

# Java/Play
export PATH=$PATH:~/Software/Java/play-2.0.3

# PostgreSQL
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH

# coreutils
# All commands have been installed with the prefix 'g'.
# If you really need to use these commands with their normal names, you
# can add a "gnubin" directory to your PATH from your bashrc like:
# PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
