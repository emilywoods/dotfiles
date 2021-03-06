# Dotfiles

This repository includes setup for:

- nvim
- Polybar
- Regolith Desktop
- Oh-my-zsh
- Git and git aliases


## Installation

```sh
# Download homeshick, the dotfiles manager
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

# Download this repo
git clone git@github.com:emilywoods/dotfiles.git $HOME/.homesick/repos/dotfiles

# Link dotfiles into place
$HOME/.homesick/repos/homeshick/homeshick.sh link

# Neovim plugin manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Neovim undo history
mkdir -p ~/.config/nvim/undo/

# Neovim python plugin support
pip install neovim
```

And then run `:PlugInstall` in Neovim.


## Updating dotfiles locally

`cd` to `$HOME/.homesick/repos/dotfiles`, edit the dotfiles, commit and push.

If you add new files run `homeshick link` afterwards.


## Pulling changes to dotfiles from the repo

```sh
homeshick pull
homeshick link
```

## Desktop Setup

- Desktop: Regolith
- Bar: Polybar
- Notifications: Dunst
- Shell: Oh my zsh, theme: muse

### Additiional installation

- feh: randomly select background image
- i3lock: lockscreen
- scrot: lockscreen
- font-awesome, siji, termsynu: fonts

