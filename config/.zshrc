# ========== Options ========== #
TERM=xterm-256color 

# ========== Plugins ========= #
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# ========== Prompt ========== #
eval "$(starship init zsh)"

# ========== Aliases ========== #
# Better ls
alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

# Apps
alias n='nvim'
alias b='btm'
alias lg='lazygit'

# Python
alias py='python3'

# Files
alias nz='nvim ~/.zshrc'
alias nn='cd ~/Repos/dotfiles/config/.config/nvim && nvim init.lua'

# Utils
#alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias le='less'
alias cat='bat'
alias grep='rg'
alias ei='exit'

# Git
alias gs='git status -s'


export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# ========== AutoStart ========== #
#pfetch

