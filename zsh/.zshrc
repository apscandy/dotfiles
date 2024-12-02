
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)

alias ls="eza --long --header --icons --git --total-size"
alias ll="eza --long --header --icons --git --total-size --git-ignore --tree"

#Setting cat to use bat, vim to use neovim and cd to use zoxide
alias cat="bat"
alias vim="nvim"
alias cd="z"
alias clear="reset"
alias docker="podman"
alias lg="lazygit"

# this command is used when you have a password in plain text in the termainl history
alias cth="reset && history -c" 

# Setting catppuccin mocha for both bat and fzf
export BAT_THEME="Catppuccin Mocha"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# run fastfetch on terminal start
fastfetch

