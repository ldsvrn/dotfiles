### Packages managers ###
alias inst='doas pacman -S'
alias aurup='paru -Sua'
alias aur='paru -S'
alias pacrem='doas pacman -Rs'
alias pacsear='pacman -Ss'
alias pacup='doas pacman -Syu'
alias pym='python -m'
alias cleanup='doas pacman -Rns $(pacman -Qtdq)'
alias update-mirrors='doas reflector --country France,Germany --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'

# Typing mistakes
alias systemclt='systemctl'
alias train='env sl' # Because I keep using this stupid command
alias sl='exa -la --color=always --sort=type --icons'

# Alias for dotfiles bare git repo
alias config='git --git-dir=$HOME/.dotfiles-repo/ --work-tree=$HOME' 

# To switch from sudo to doas
alias sudo='doas'
alias sudoedit='doasedit'
alias wgup='doas wg-quick up wg0'
alias wgdown='doas wg-quick down wg0'
alias wg-quick='doas wg-quick'

# Cursed
alias flex='neofetch'
alias die='shutdown -P now'

# Blingbling
alias ls='exa -la --group --color=always --sort=type --icons'
alias ll='exa -l --group --color=always --sort=type --icons'
alias l='exa --color=always --sort=type --icons'
alias la='exa -a --color=always --sort=type --icons'

alias vim='nvim'
alias v='nvim'
alias cls='/usr/bin/env clear'
alias say='fortune | cowsay | lolcat'

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

# Convenience
alias keyfix='setxkbmap fr -option caps:swapescape -option compose:menu'
alias py='python'
alias vpnon='doas systemctl enable expressvpn --now'
alias vpnoff='expressvpn disconnect; sudo systemctl disable expressvpn --now'
alias vpncon='expressvpn connect'
alias vpndis='expressvpn disconnect'
alias x='startx'
alias open='xdg-open'

alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# youtube-dl
alias ytdl='yt-dlp'
alias ytdla="yt-dlp --extract-audio --audio-format best"
alias ytdlao="yt-dlp --extract-audio --audio-format opus "
#alias ytdlp='yt-dlp'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
