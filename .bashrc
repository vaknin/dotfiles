#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Exports
export XDG_CONFIG_HOME=$HOME/.config 

# Aliases
alias ls='lsd'
alias ll='ls -l'
alias c='bat'
alias clp='xclip -selection c' # pipe to 'toclp' to copy to clipboard
alias :q="exit" # exit vim-style
alias n="nvim" # Neovim shortcut
alias ni3="n $XDG_CONFIG_HOME/i3/config"
alias nrc="n $HOME/.bashrc"
alias nc="n $XDG_CONFIG_HOME/nvim/init.lua"
alias ncp="n $XDG_CONFIG_HOME/nvim/lua/plugins.lua"
alias nck="n $XDG_CONFIG_HOME/nvim/lua/keymaps.lua"
alias nalac="n .config/alacritty/alacritty.yml"
alias chess="n ~/Projects/chess/"
alias slp="systemctl suspend"
alias yadm-add-commit-push="yadm add -u && yadm commit -m '.' && yadm push"

# Terminal Preface
PS1='🪴\W> '

# Rust env
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
