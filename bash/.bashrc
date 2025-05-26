# .bashrc

# ------------- Env Variables -------------

export WORK="$HOME/Documents/work"
export PERSONAL="$HOME/Documents/personal/"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"
export WORKVAULT="~/Documents/Obsidian\ Vault"
# ------------- Alias -----------

alias deployment='cd "$WORK/deployment"'
alias c="clear"
alias work='cd $WORK'
alias n="nvim"
alias config="cd '$HOME/.config'"
alias ow="cd $WORKVAULT"
alias op="cd $HOME/Documents/PersonalVault"
alias personal='cd $PERSONAL'
#Kubectl

alias k='kubectl'


# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Set KUBECONFIG to include all configs in the .kube/configs directory
export KUBECONFIG=$(find ~/.kube/configs -type f -name '*' | tr '\n' ':')

# To make it more robust, ensuring it adds the default kubeconfig if it exists
if [ -f ~/.kube/config ]; then
  export KUBECONFIG=~/.kube/config:$(find ~/.kube/configs -type f -name '*' | tr '\n' ':')
else
  export KUBECONFIG=$(find ~/.kube/configs -type f -name '*' | tr '\n' ':')
fi

if ! systemctl is-active --quiet docker.service; then
    sudo /usr/bin/systemctl start docker.service
fi


# Remove trailing colon
export KUBECONFIG=${KUBECONFIG%:}


# eval "$(tmuxifier init -)"
eval "$(starship init bash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Eza's custom aliases
alias ls="eza --icons -a"
alias lt="eza --tree --level=2 --long --icons --git"

# Bat aliases
alias cat="bat"

# Fzf
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Go get command 
alias gg="go get ./..."

# Tmuxifier 

alias tld="tmuxifier load-window deployment-window"

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
. "$HOME/.cargo/env"
