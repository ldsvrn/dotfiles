# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

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

source ~/.config/zsh/aliases.zsh
alias x="startx"
#PS1='[\u@\h \W]\$ '

#export PS1="\[\e[0;36m\]\u \[\e[0;32m\]\w \[\e[0;31m\]> \[\e[0m\]"
eval "$(starship init bash)"
