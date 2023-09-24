# ~/.bash_profile


export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
# export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/config"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export HISTFILE="$HOME/.local/state/shell_history"
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export USERXSESSION="$XDG_CACHE_HOME/X11/xsession"
export USERXSESSIONRC="$XDG_CACHE_HOME/X11/xsessionrc"
export ALTUSERXSESSION="$XDG_CACHE_HOME/X11/Xsession"
export ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
export WAKATIME_HOME="$XDG_CONFIG_HOME/wakatime"
export VSCODE_PORTABLE="$XDG_CONFIG_HOME/vscode"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PASSWORD_STORE_DIR="$HOME/.local/share/pass"
# export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export KODI_DATA="$XDG_DATA_HOME/kodi"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export W3M_DIR="$XDG_STATE_HOME/w3m"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml" # default ~/.config/starship.toml
export BUN_INSTALL="$XDG_DATA_HOME/bun"

export EDITOR="nvim" 
export ALTERNATE_EDITOR="lvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export LSCOLORS="0xGxBxDxCxEgEdxbxgxcxd	" # terminal colors releated
export PG_COLOR="always" # postgres
export _JAVA_AWT_WM_NONREPARENTING=1 # For Java Applications
export XMODIFIERS='@im=fcitx' # multilang keyboard
export GTK_IM_MODULE='fcitx' # multilang keyboard
export SDL_IM_MODULE='fcitx' # multilang keyboard
export QT_IM_MODULE='fcitx' # multilang keyboard
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1  # github
export CHROME_EXECUTABLE='/usr/bin/chromium' # Crome executable path
# export DRI_PRIME=1 # For graphic card


# Go programming language
export GO111MODULE="on"
export GOPRIVATE="github.com/sirjager/*"
export GOMODCACHE="/mnt/storage/programs/go/mod"
export GOROOT="/mnt/storage/programs/go/sdk"
export GOPATH="/mnt/storage/workspace/goenv"
export GOBIN="/mnt/storage/workspace/goenv/bin"
export GOCACHE="/mnt/storage/workspace/goenv/cache"
export PNPM_HOME="/mnt/storage/programs/pnpm"


export PATH="$PATH":"$GOPATH/bin"
export PATH="$PATH":"$BUN_INSTALL/bin"
export PATH="$PATH":"$HOME/.local/bin"
export PATH="$PATH":"$HOME/.config/emacs/bin"
export PATH="$PATH":"$HOME/.config/rofi/scripts"
export PATH="$PATH":"/mnt/storage/programs/pnpm"
export PATH="$PATH":"/mnt/storage/programs/node/bin"
export PATH="$PATH":"/mnt/storage/programs/go/sdk/bin"
export PATH="$PATH":"/mnt/storage/programs/protoc/bin"
export PATH="$PATH":"/mnt/storage/programs/flutter/bin"
export PATH="$PATH":"/home/jager/.local/share/nvim/mason/bin"
export PATH="$PATH":"/mnt/storage/programs/android-studio/bin"
export PATH="$PATH":"/mnt/storage/programs/android-studio-sdk/platform-tools"
export PATH="$PATH":"/mnt/storage/programs/node/pnpm/global/5/node_modules/grpc-tools/bin"

[ -f ~/.bashrc ] && . ~/.bashrc


[ -f "$CARGO_HOME/env" ] && . "$CARGO_HOME/env"


