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
ALIASES_FILE="$HOME/.aliases.sh"
if [ -f "$ALIASES_FILE" ]; then	source "$ALIASES_FILE"; fi

ZSH_ALIASES="$HOME/.aliases.zsh"
if [ -f "$ZSH_ALIASES" ]; then	source "$ZSH_ALIASES"; fi

###############################################################################
# Prompt
###############################################################################
POWERLEVEL10K_DIR="$HOME/bin/powerlevel10k"
if ! test -d "$POWERLEVEL10K_DIR"; then
    mkdir -p "$POWERLEVEL10K_DIR";
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$POWERLEVEL10K_DIR"
fi
source $POWERLEVEL10K_DIR/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh  # load preferences


###############################################################################
# Syntax highlightning
###############################################################################
SYNTAX_HIGHLIGHT_DIR="$HOME/bin/zsh-syntax-highlighting"
if ! test -d $SYNTAX_HIGHLIGHT_DIR; then
    mkdir -p "$SYNTAX_HIGHLIGHT_DIR";
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$SYNTAX_HIGHLIGHT_DIR";
fi
source $SYNTAX_HIGHLIGHT_DIR/zsh-syntax-highlighting.zsh

