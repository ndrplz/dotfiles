# dotfiles

**For years I spent endless time re-installing and re-customizing the same software over and over, every time that I changed machine.**
> Broken laptop? Re-install, re-configure, re-customize.
>  New server? Re-install, re-configure, re-customize...

> Ah wait, I forgot this! And let's install also this other guy. And how was that nice package again? 

> I wonder why the shell doesn't autocomplete anymore..? And since we're here, also `tmux` behaves weird.
 
I guess that might sound familiar to someone.

This belongs to the past! I'm finally following thousands of other devs in centralizing my configurations in one _versioned_ repository.

This repo contains:
- The software packages that I most often need
- My dotfiles for most common software (`zsh`, `vim`, `tmux` etc)
- Other minor perks such as my key remapping and wallpaper
- One automated script to setup all the above in one-shot.

For the first time, setting up a new machine now takes **minutes** and not _hours_!

### Dependencies
  - GNU Make + git + `sudo` required


### Install

Clone the repository via `git clone`. Run `make` from the repo root to be shown the help, which looks like:
```make
> make
clean_dotfiles                 Clean dotfiles links from $HOME.
help                           Show this help.
install_all                    Install all my beloved software and configs.
install_apt                    Install required apt packages.
install_dotfiles               Link all dotfiles to $HOME.
install_snap                   Install required snap packages.
install_wallpaper              Download and set wallpaper.
remap_caps                     Remap caps lock to ctrl (system-wide).
```
To initialize a blank machine, I run `make install_all` and I'm basically done :)

Notice: You need to log-out and log-in again to see the caps lock remapping applied.

### Post-Install

Now that `zsh` is configured, you can change the default shell from `bash` to `zsh`:
```shell
chsh -s $(which zsh)
```

Notice: You need to log-out and log-in again to see the change applied.

### Knowing More

Feel free to explore and copypaste code snippets from this repo into your own configs.

If you enjoy tinkering with dotfiles, there are tons of places to get more inspiration out there. To start with, simply search "dotfiles" on GitHub: thousands of developers shared their custom configs already! You might also be interested to this "unofficial" guide to dotfiles on GitHub: https://dotfiles.github.io/, which in turns aggregates a lot of useful resources.
