unalias -a

###############################################################################
# Basics
###############################################################################
alias ls='ls --color=auto'
alias ll='ls -halt'
alias la='ls -la'

alias s='ssh'


###############################################################################
# Internet
###############################################################################
alias myip="curl https://ipinfo.io/json" # or /ip for plain-text ip
alias speedcheck="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -"


###############################################################################
# Git
###############################################################################
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -v'
alias gcb='git checkout -b'
alias gcn!='git commit -v --amend --no-edit'
alias gco='git checkout'
alias gd='git diff'
alias gst='git status'


###############################################################################
# [Danger Zone] Overriding built-in commands
###############################################################################
alias cat='batcat --paging=never'  # no paging to be a drop-in cat replacement
alias cp='cp -i'
alias mv='mv -i'

