#!/usr/bin/env zsh
# Functions are stolen from DistroTube's dotfiles

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export GPG_TTY=$(tty) #if not zshenv 

# startx on login on tty1
if [ $(tty) = "/dev/tty1" ]; then
    startx
fi

# term title
case $TERM in alacritty*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac

### SETOPT ###
setopt appendhistory
# completitions
setopt AUTO_MENU COMPLETE_IN_WORD AUTO_CD extendedglob

### SET VI MODE ###
bindkey -e # too annoyed by vi lol
#export KEYTIMEOUT=1
# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char

### KEYBINDINGS ###
# ctrl+arrow keys 
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

bindkey "^[[1;3C" ""
bindkey "^[[1;3D" ""

### COMPLETIONS ###
autoload -Uz compinit; compinit
_comp_options+=(globdots)
fpath=(/usr/share/zsh/site-functions/ $fpath)

### SOURCES ###
source $ZDOTDIR/aliases.zsh
# source $ZDOTDIR/de.zsh # was drunk
source $ZDOTDIR/plugins/cursor_mode.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

if [ -d "/usr/share/fzf" ]; then
    source $ZDOTDIR/plugins/fzf-tab/fzf-tab.plugin.zsh
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
else
    zstyle ':completion:*:*:*:default' menu yes select
    zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
    zstyle ':completion:*' list-colors ''
fi

### PATH ###
if [ -d "$HOME/.bin" ]; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ]; then
    PATH="$HOME/Applications:$PATH"
fi

if [ -d "$HOME/.config/scripts" ]; then
    PATH="$HOME/.config/scripts:$PATH"A
fi

### Function extract for common file formats ###
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in "$@"
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.cbt|*.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.cbr|*.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.cbz|*.epub|*.zip)       unzip ./"$n" -d "$(basename $n .zip)"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.cb7|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.pkg|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *.cpio)      cpio -id < ./"$n"  ;;
            *.cba|*.ace)      unace x ./"$n"      ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

IFS=$SAVEIFS

# navigation
upd () {
  local d=""
  local limit="$1"

  # Default to limit of 1
  if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
    limit=1
  fi

  for ((i=1;i<=limit;i++)); do
    d="../$d"
  done

  # perform cd. Show error if cd fails
  if ! cd "$d"; then
    echo "Couldn't go up $limit dirs.";
  fi
}

# use rsync to copy files (quicker + progress bar)
cpv() {
    rsync -pogbr -hhh --backup-dir="/tmp/rsync-${USERNAME}" -e /dev/null --progress "$@"
}

# play twitch from terminal:
twitch() {
    mpv "https://twitch.tv/$@" 2> /dev/null
}

pfetch

eval "$(starship init zsh)"
