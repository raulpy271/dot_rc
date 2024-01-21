# My config files

## NeoVim config:

```sh
# Install NeoVim

# Install vim-plug: https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install a Nerd Font
# Font Recommended: Agava https://www.nerdfonts.com/font-downloads

# Copy My neovim config:
cp init.vim ~/.config/nvim/init.vim

# Open Neovim and install Plugins:
nvim -c ":PlugInstall"

# Check if everything is ok:
nvim -c ":checkhealth"
```

