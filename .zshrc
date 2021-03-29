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
autoload -Uz compinit
zstyle ':completion:*' menu select                 # arrow-key driven menu
zmodload zsh/complist
compinit
_comp_options+=(globdots)                          # include hidden files
bindkey -M menuselect 'h' vi-backward-char         # menu left
bindkey -M menuselect 'k' vi-up-line-or-history    # menu up
bindkey -M menuselect 'l' vi-forward-char          # menu right
bindkey -M menuselect 'j' vi-down-line-or-history  # menu down


###############################################################################
# Export vars
###############################################################################
export EDITOR='vim'  # what else


###############################################################################
# Aliases
###############################################################################
ALIASES_FILE="$HOME/.aliases"
if [ -f "$ALIASES_FILE" ]; then	source "$ALIASES_FILE"; fi

ZSH_ALIASES="$HOME/.zsh_aliases"
if [ -f "$ZSH_ALIASES" ]; then	source "$ZSH_ALIASES"; fi

