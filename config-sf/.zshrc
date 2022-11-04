# ========== Options ========== #
TERM=xterm-256color 

autoload -Uz compinit
compinit

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
alias vim='nvim'
alias b='btm'
alias lg='lazygit'

# Python
alias py='python3'

# Files
alias nz='nvim ~/.zshrc'
alias nn='cd ~/Repos/dotfiles/config/nvim && nvim init.lua'
alias na='cd ~/Repos/dotfiles/config/alacritty && nvim alacritty.yml'

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
alias ga='git add'
alias gp='git pull'


export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# ========== AutoStart ========== #
#pfetch



# Load Angular CLI autocompletion.
source <(ng completion script)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dgloor/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dgloor/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/dgloor/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dgloor/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

