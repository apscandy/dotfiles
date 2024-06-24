install_dev_tools() {
  nix-env -iA nixpkgs.eza nixpkgs.bat nixpkgs.git nixpkgs.fzf nixpkgs.gnumake nixpkgs.lazydocker nixpkgs.lazygit nixpkgs.gh nixpkgs.neovim nixpkgs.tmux nixpkgs.stow nixpkgs.fastfetch nixpkgs.zoxide nixpkgs.jq nixpkgs.ripgrep
}


# check if nix is installed
if command -v nix-env &> /dev/null; then
    echo "nix-env is already installed."
else
    [ `uname -s` = 'Linux' ] && curl -L https://nixos.org/nix/install | sh -s -- --daemon
    [ `uname -s` = 'Darwin' ] && curl -L https://nixos.org/nix/install | sh -s -- 
fi

install_dev_tools

# checking for zsh
if [ ! -x "$(command -v zsh)" ]; then
    nix-env -iA nixpkgs.zsh
    command -v zsh | sudo tee -a /etc/shells
    sudo chsh -s $(which zsh) $USER
fi

# install oh-my-zsh and zsh plugins
if [ ! -d "$HOME/.oh-my-zsh" ]; then
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# install powerlevel10k
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# install tpm if not installed
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

[ `uname -s` = 'Darwin' ] && curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin 

echo "adding files"
stow .




