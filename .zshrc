###############################################################################
# Prompt
###############################################################################
autoload -Uz promptinit && promptinit
prompt adam1


###############################################################################
# Z shell options (see: man zshoptions)
###############################################################################
setopt autocd
setopt autopushd
setopt histignorealldups
setopt sharehistory
setopt pushdignoredups
setopt interactivecomments


###############################################################################
# Key bindings
###############################################################################
bindkey -e  # emacs keymap


###############################################################################
# History
###############################################################################
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history


###############################################################################
# Autocompletion
###############################################################################
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select                 # arrow-key driven menu
bindkey -M menuselect 'h' vi-backward-char         # menu left
bindkey -M menuselect 'k' vi-up-line-or-history    # menu up
bindkey -M menuselect 'l' vi-forward-char          # menu right
bindkey -M menuselect 'j' vi-down-line-or-history  # menu down


###############################################################################
# Export vars
###############################################################################
export EDITOR='vim'  # what else


###############################################################################
# Aliases (to be moved)
###############################################################################
alias d='dirs -v | head -n 5'
alias 1='cd +1'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'

