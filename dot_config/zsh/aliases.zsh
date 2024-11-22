if grep -q Debian /etc/os-release; then
    alias inst='sudo apt install'
    alias rem='sudo apt remove'
    alias sear='apt search'
    alias up='sudo apt update && sudo apt upgrade'

    alias py='python3'
    alias code='codium'
elif grep -q Arch /etc/os-release; then
    alias inst='sudo pacman -S'
    alias aurup='paru -Sua'
    alias aur='paru -S'
    alias rem='sudo pacman -Rs'
    alias sear='pacman -Ss'
    alias up='sudo pacman -Syu'

    alias py='python'
    alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
    alias update-mirrors='sudo reflector --country France,Germany,Netherlands --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
fi

# Typing mistakes
alias systemclt='systemctl'
alias cope='code'

# git
alias gitc='git commit -a -S'
alias gitp='git push'

# Alias for dotfiles bare git repo, replaced by chezmoi
#alias config='git --git-dir=$HOME/.dotfiles-repo/ --work-tree=$HOME' 

# wireguard
alias wgup='wg-quick up wg0'
alias wgdown='wg-quick down wg0'
alias wg-quick='wg-quick'

# aaaaaa
alias flex='neofetch'
alias die='shutdown -P now'

# eza is ls
alias ls='eza -la --group --color=auto --sort=type --icons --octal-permissions --git'
alias ll='eza -l --group --color=auto --sort=type --icons --octal-permissions'
alias l='eza --color=auto --sort=type --icons'
alias la='eza -a --color=auto --sort=type --icons'

# vim is nvim
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

# Adding flags
alias cp="cp -i"            # Ask before overwriting
alias mv='mv -i'            # Ask before overwriting
alias rm='rm -i'            # Ask before deleting
alias df='df -h'            # Human readable 
alias free='free -m'        # Show sizes in MB
alias wcl='wc -l'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ip='ip -c=auto'
alias fd='fd --hidden --color=auto'

alias netcons='sudo lsof -nP -i'

alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# youtube-dl
alias ytdl='yt-dlp'
alias ytdla="yt-dlp --extract-audio --audio-format best"
alias ytdlao="yt-dlp --extract-audio --audio-format opus "

# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"

#tailscale
alias tup="sudo systemctl start tailscaled && tailscale up --accept-routes"
alias tdown="tailscale down && sudo systemctl stop tailscaled"

# dns debug
alias dig="drill"
