SHELL=/usr/bin/bash
DOTFILES = $(shell pwd)


.PHONY: help
help:     ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.PHONY: install_all
install_all: install_apt install_snap install_dotfiles install_wallpaper remap_caps  ## Install all my beloved software and configs.

	sudo apt upgrade -y
	zsh -i -c "figlet Welcome back! | lolcat"


.PHONY: remap_caps
remap_caps: ## Remap caps lock to ctrl (system-wide).

	$(DOTFILES)/bin/system_remap_caps.sh


.PHONY: install_apt
install_apt:  ## Install required apt packages.

	$(DOTFILES)/bin/apt_install.sh


.PHONY: install_snap
install_snap:  ## Install required snap packages.

	$(DOTFILES)/bin/snap_install.sh


.PHONY: install_dotfiles
install_dotfiles: clean_dotfiles  ## Link all dotfiles to $HOME.

	# Linking aliases
	ln -s $(DOTFILES)/.aliases* $(HOME)

	# Linking vim config
	ln -s $(DOTFILES)/.vimrc $(HOME)/.vimrc

	# Linking tmux config
	ln -s $(DOTFILES)/.tmux.conf $(HOME)/.tmux.conf

	# Linking zsh config
	ln -s $(DOTFILES)/.zshrc $(HOME)/.zshrc

	# Linking powerlevel10k config
	ln -s $(DOTFILES)/.p10k.zsh $(HOME)/.p10k.zsh


.PHONY: install_wallpaper
install_wallpaper:  ## Download and set wallpaper.

	wget -O $(HOME)/.wallpaper.png https://w.wallhaven.cc/full/0w/wallhaven-0wg61x.png
	gsettings set org.gnome.desktop.background picture-uri file://$(HOME)/.wallpaper.png


.PHONY: clean_dotfiles
clean_dotfiles:  ## Clean dotfiles links from $HOME.

	# Cleaning aliases
	rm -f $(HOME)/.aliases*

	# Cleaning vim config
	rm -f $(HOME)/.vimrc

	# Cleaning tmux config
	rm -f $(HOME)/.tmux.conf

	# Cleaning zsh config
	rm -f $(HOME)/.zshrc

	# Cleaning powerlevel10k config
	rm -f $(HOME)/.p10k.zsh

