# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# prepend local bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# SDKs
export PATH=$HOME/dev/SDK/adt-bundle-mac/sdk/tools:$PATH
export PATH=$HOME/dev/SDK/adt-bundle-mac/sdk/platform-tools:$PATH
export PATH=$HOME/dev/SDK/go_appengine:$PATH

# Go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Sites/go
export PATH=$PATH:$GOPATH

# npm/node
export PATH=/usr/local/share/npm/bin:$PATH

# Global-local npm packages
export PATH=$PATH:$HOME/Sites/lib/voyager/bin
export PATH=$PATH:$HOME/Sites/lib/oak/bin
export PATH=$PATH:$HOME/Sites/prototypes/kao/bin

# PostgreSQL
export PATH=$PATH:/Applications/Postgres.app/Contents/MacOS/bin

# Add rvm to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin

# Heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
