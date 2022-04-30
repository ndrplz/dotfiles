###############################################################################
# Z shell options (see: https://zsh.sourceforge.io/Doc/Release/Options.html)
###############################################################################
setopt autocd
setopt autopushd
setopt histignorealldups
setopt sharehistory
setopt pushdignoredups
setopt interactivecomments

# Disable history expansion, which is byzantine and dangerous.
# (see: https://unix.stackexchange.com/a/33341/393163)
unsetopt banghist

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
ALIASES="$HOME/.aliases.sh" && [[ -f $ALIASES ]] && source $ALIASES
Z_ALIASES="$HOME/.aliases.zsh" && [[ -f $Z_ALIASES ]] && source $Z_ALIASES

###############################################################################
# Prompt
###############################################################################
POWERLEVEL10K_DIR="$HOME/bin/powerlevel10k"
if ! test -d "$POWERLEVEL10K_DIR"; then
    mkdir -p "$POWERLEVEL10K_DIR";
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$POWERLEVEL10K_DIR"
fi
source $POWERLEVEL10K_DIR/powerlevel10k.zsh-theme
P10K_CONFIG="$HOME/.p10k.zsh" && [[ -f $P10K_CONFIG ]] && source $P10K_CONFIG


###############################################################################
# Syntax highlightning
###############################################################################
SYNTAX_HIGHLIGHT_DIR="$HOME/bin/zsh-syntax-highlighting"
if ! test -d $SYNTAX_HIGHLIGHT_DIR; then
    mkdir -p "$SYNTAX_HIGHLIGHT_DIR";
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$SYNTAX_HIGHLIGHT_DIR";
fi
source $SYNTAX_HIGHLIGHT_DIR/zsh-syntax-highlighting.zsh

