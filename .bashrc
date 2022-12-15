#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Exports
export XDG_CONFIG_HOME=$HOME/.config 

# Aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias clp='xclip -selection c' # pipe to 'toclp' to copy to clipboard
alias :q="exit" # exit vim-style
alias n="neovide" # Neovim shortcut
alias ni3="n $XDG_CONFIG_HOME/i3/config && exit"
alias nrc="n $HOME/.bashrc && exit"
alias nc="n $XDG_CONFIG_HOME/nvim/init.lua && exit"
alias ncp="n $XDG_CONFIG_HOME/nvim/lua/plugins.lua && exit"
alias nck="n $XDG_CONFIG_HOME/nvim/lua/keymaps.lua && exit"
alias nalac="n .config/alacritty/alacritty.yml && exit"
alias slp="systemctl suspend"
alias yadm-add-commit-push="yadm add -u && yadm commit -m '.' && yadm push"

# Terminal Preface
PS1='🪴\W> '

# Rust env
. "$HOME/.cargo/env"
