SHELL=/usr/bin/bash
DOTFILES = $(shell pwd)

.PHONY: fresh_install
fresh_install: install_apt install_snap install_dotfiles
	zsh -i -c "figlet Here we are again! | lolcat"

.PHONY: install_dotfiles
install_dotfiles: install_aliases install_vim install_tmux install_zsh

.PHONY: install_apt
install_apt:
	$(DOTFILES)/bin/apt_install.sh

.PHONY: install_snap
install_snap:
	$(DOTFILES)/bin/snap_install.sh

.PHONY: install_aliases
install_aliases: clean_aliases
	# Linking aliases
	ln -s $(DOTFILES)/.aliases* $(HOME)

.PHONY: install_vim
install_vim: clean_vim
	# Linking vim config
	ln -s $(DOTFILES)/.vimrc $(HOME)/.vimrc

.PHONY: install_tmux
install_tmux: clean_tmux
	# Linking tmux config
	ln -s $(DOTFILES)/.tmux.conf $(HOME)/.tmux.conf

.PHONY: install_zsh
install_zsh: clean_zsh
	# Linking zsh config
	ln -s $(DOTFILES)/.zshrc $(HOME)/.zshrc

.PHONY: clean
clean: clean_aliases clean_vim clean_tmux clean_zsh

.PHONY: clean_aliases
clean_aliases:
	# Cleaning old aliases
	rm -f $(HOME)/.aliases*

.PHONY: clean_vim
clean_vim:
	# Cleaning old vim config
	rm -f $(HOME)/.vimrc

.PHONY: clean_tmux
clean_tmux:
	# Cleaning old tmux config
	rm -f $(HOME)/.tmux.conf

.PHONY: clean_zsh
clean_zsh:
	# Cleaning old zsh config
	rm -f $(HOME)/.zshrc

