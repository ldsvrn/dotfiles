### ABBR ###
# Packages Managers
if grep -q Debian /etc/os-release
    abbr inst 'sudo apt install'
    abbr rem 'sudo apt remove'
    abbr sear 'apt search'
    abbr up 'sudo apt update && sudo apt upgrade'

    alias py='python3'
    alias code='codium'
end

if grep -q Arch /etc/os-release
    abbr inst 'sudo pacman -S'
    abbr aurup 'paru -Sua'
    abbr aur 'paru -S'
    abbr rem 'sudo pacman -Rs'
    abbr sear 'pacman -Ss'
    abbr up 'sudo pacman -Syu'

    alias py='python'
    alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
    alias update-mirrors='sudo reflector --country France,Germany,Netherlands --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
end 

# Typing mistakes
abbr systemclt 'systemctl'
abbr cope 'code'

# useful stuff
abbr gitc 'git commit -a -S -m "'
abbr gitp 'git push'

# whatever this is
abbr apple 'mpv "https://www.youtube.com/watch?v=FtutLA63Cp8" --vo=tct'

### ALIASES ###
### Packages managers ###
alias pym='python -m'

# Alias for dotfiles bare git repo
alias config='git --git-dir=$HOME/.dotfiles-repo/ --work-tree=$HOME' 

# To switch from sudo to doas
alias wgup='wg-quick up wg0'
alias wgdown='wg-quick down wg0'
alias wg-quick='wg-quick'

# aaaaaa
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
#alias vpnon='sudo systemctl enable expressvpn --now'
#alias vpnoff='expressvpn disconnect; sudo systemctl disable expressvpn --now'
#alias vpncon='expressvpn connect'
#alias vpndis='expressvpn disconnect'
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

# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
