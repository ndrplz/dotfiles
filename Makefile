SHELL=/usr/bin/bash
DOTFILES = $(shell pwd)

.PHONY: fresh_install
fresh_install: install_apt install_snap install_dotfiles install_wallpaper remap_caps
	zsh -i -c "figlet Welcome back! | lolcat"

.PHONY: remap_caps
remap_caps:

	# Remapping caps lock to ctrl
	$(DOTFILES)/bin/system_remap_caps.sh


.PHONY: install_apt
install_apt:

	$(DOTFILES)/bin/apt_install.sh


.PHONY: install_snap
install_snap:

	$(DOTFILES)/bin/snap_install.sh.PHONY: install_dotfiles


.PHONY: install_dotfiles
install_dotfiles: clean_dotfiles

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
install_wallpaper:

	wget -O $(HOME)/.wallpaper.png https://w.wallhaven.cc/full/0w/wallhaven-0wg61x.png
	gsettings set org.gnome.desktop.background picture-uri file://$(HOME)/.wallpaper.png


.PHONY: clean_dotfiles
clean_dotfiles:

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

