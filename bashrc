# color me tickled
# export TERM="xterm-color"
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export CLICOLOR=TRUE;

# aliases are for chumps
alias ls="ls -l"
alias ll="ls -la"
alias mysql="/usr/local/mysql/bin/mysql"

# because im lazy
alias cd..="cd .."
alias ..="cd .."

alias gpp="g++"
alias gob="go clean && go build main.go && ./main"

# rvm use .ruby-version
alias rv="rvm use .ruby-version"

# java
alias j="java"
alias jc="javac"

# because tmux is a fucker
alias tl="tmux list-sessions"
alias tk="tmux kill-session"
alias tkp="tmux kill-pane"
alias ta="tmux attach -t"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Terminal colors (after installing GNU coreutils)
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;37m\]" #change this for letter colors
HII="\[\033[0;31m\]" #change this for letter colors
SI="\[\033[1;30m\]" #this is for the current directory
IN="\[\033[0m\]"

#export PS1="$NM[ $HI\u $SI\w$HII\$(__git_ps1) $NM] $IN"
export PS1="$NM[ $SI\w$HII\$(__git_ps1) $NM] $IN"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# added by travis gem
source /Users/davidglivar/.travis/travis.sh
