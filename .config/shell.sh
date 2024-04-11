#!/bin/sh

eval "$(direnv hook bash)"
eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"

# .dotfiles github bare repository
alias dot="/usr/bin/lazygit --git-dir=$mydotfiles --work-tree=$HOME"
alias dot-remove-lock="rm -f ~/$mydotfiles/index.lock"
alias dots="/usr/bin/git --git-dir=$mydotfiles --work-tree=$HOME"
alias dots-hide-untracked="/usr/bin/git --git-dir=$mydotfiles --work-tree=$HOME config --local status.showUntrackedFiles no"

alias .grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

alias ssh-newkey="ssh-keygen -t ed25519 -C"
alias ssh-eval='eval "$(ssh-agent -s)"'
alias ssh-test='ssh -T git@github.com'

alias net-start-virt='sudo virsh net-start default'

# Tmux
alias tm="tmux"
alias tma='tmux attach -t'
alias tmk='tmux kill-session'
alias tmka='tmux kill-session -a'
alias tmux-delete-sessions="rm -rf ~/.local/share/tmux/resurrect/*"

alias docker-clean-buildx="docker buildx prune --all"
alias docker-clean-builder="docker builder prune --all"
alias docker-clean-image="docker image prune --all"

# saving some misc commands
alias battery-info="upower -i /org/freedesktop/UPower/devices/battery_BAT0"

# exa: ls commands with style
alias l='exa -h --long --all --sort=name --icons'
alias la='exa -h --long --all --sort=name --icons'
alias ls="exa -h --long --sort=name --icons --classify"
alias ll="exa -h --long --sort=name --icons --classify"

# general aliases
alias cl='clear && neofetch'
alias rbf='fc-cache -fv'
alias slv="sudo -E -s ~/.local/bin/lvim"
alias k='killall -q'
alias knode='sudo pkill -f nodejs && sudo pkill -f node'

alias s=". ~/.bashrc;"

# change directories
alias cds="cd $mystorage"
alias cdw="cd $mystorage/workspace"
alias cdd="cd $mystorage/downloads"

# Yay Package Manager / Aur Helper
alias .i='yay --noconfirm --needed -S' # To install a package (always run pacman -Syu, before installing)
alias .r="yay --noconfirm -Rns"        # To remove the package, avoid orphaned dependencies and erase its global configuration (which in most cases is the proper command to remove software.)
alias .u="yay --noconfirm -Syu"        # To update the system && Update the database
alias .rank-mirrors="sudo reflector --verbose --save /etc/pacman.d/mirrorlist --sort rate -l 50"

# usage > install-go go1.20.4
alias install-go='function _pkg-install-go(){ GOVER=$1 && echo "$GOVER.linux-amd64.tar.gz"; mkdir -p /mnt/storage/programs/go && rm -f /mnt/storage/programs/go/$GOVER.linux-amd64.tar.gz ; rm -rf /mnt/storage/programs/go/sdk ; wget -O /mnt/storage/programs/go/$GOVER.linux-amd64.tar.gz https://golang.org/dl/$GOVER.linux-amd64.tar.gz && tar -C /mnt/storage/programs/go -xzf /mnt/storage/programs/go/$GOVER.linux-amd64.tar.gz && mv /mnt/storage/programs/go/go /mnt/storage/programs/go/sdk && clear && /mnt/storage/programs/go/sdk/bin/go version && rm -f /mnt/storage/programs/go/$GOVER.linux-amd64.tar.gz ; unset -f _pkg-install-go; };_pkg-install-go'

alias fl="flutter"
alias pn='pnpm'
alias np='npm run'

alias ai="ollama run mistral"
alias aic="ollama run codellama"

alias n="nvim"
alias nv="nvim"
alias snv="sudo -E -s nvim"
alias nvim-remove-shada="rm -rf ~/.local/state/nvim/shada/"
