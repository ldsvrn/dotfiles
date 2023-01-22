export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$ZDOTDIR"/history
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"
export HISTSIZE=10000
export SAVEHIST=10000

# pfetch
PF_INFO="ascii title os shell kernel uptime pkgs memory"
export QT_STYLE_OVERRIDE=kvantum

export TERM="xterm-256color"
export EDITOR="nvim"
#export VISUAL="code"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export RUSTUP_HOME="$XDG_DATA_HOME"/rustup 
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
