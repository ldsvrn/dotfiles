# Functions are stolen from DistroTube's dotfiles

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export GPG_TTY=$(tty) #if not zshenv 

if [ $(tty) = "/dev/tty1" ]
then
    startx
fi

### SETOPT ###
setopt appendhistory
# completitions
setopt AUTO_MENU COMPLETE_IN_WORD AUTO_CD extendedglob

### SET VI MODE ###
bindkey -v
export KEYTIMEOUT=1
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
## Enable more "fuzzy" completions (fish-like)
#zstyle ':completion:*' matcher-list 'r:[[:ascii:]]||[[:ascii:]]=** r:|=* m:{a-z\-}={A-Z\_}'
## Or:
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# Another one (enables select like fish):
zstyle ':completion:*:*:*:default' menu yes select
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''

### SOURCES ###
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/plugins/fzf-tab/fzf-tab.plugin.zsh
source $ZDOTDIR/plugins/cursor_mode.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

### PATH ###
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

if [ -d "$HOME/.config/scripts" ]
  then PATH="$HOME/.config/scripts:$PATH"
fi


### CHANGE TITLE OF TERMINALS ###
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
        ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

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
up () {
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

### BASH INSULTER (works in zsh though) ###
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

pfetch

#### PROMPT (taken from a random dude on discord)###
#setopt PROMPT_SUBST                            # Enable parameter expansion, command substitution and arithmetic expansion in prompts
#
#autoload -Uz vcs_info                        # Load version control function
#add-zsh-hook precmd vcs_info                # Add precommand hook for version control function
#
#zstyle ':vcs_info:*' enable git
#zstyle ':vcs_info:git:*' formats $' %F{5}\UF841 %b%f'
#
#if [ "${UID}" = "0" ]; then
#    _user_code='%F{1}%B#%b%f '
#else
#    _user_code='%F{2}%B$%b%f '
#fi
#
##NEWLINE=$'\n' # Needed for some reason
#PROMPT="%F{6}%~%b%f${vcs_info_msg_0_}%F{7}%f ${_user_code}"
#
#unset _user_code

eval "$(starship init zsh)"
