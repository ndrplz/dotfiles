# Prompt
autoload -Uz promptinit && promptinit
prompt adam1

# Zsh options - see `man zshoptions`
setopt autocd
setopt autopushd
setopt histignorealldups
setopt sharehistory
setopt pushdignoredups
setopt interactivecomments

# Emacs keybindings
bindkey -e

# History
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# Completion system
autoload -Uz compinit && compinit

# Editor
export EDITOR='vim'

# Aliases (to be moved)
alias d='dirs -v | head -n 5'
alias 1='cd +1'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'

