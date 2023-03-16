#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export CUDA_VISIBLE_DEVICES=0 
# Cleanup

source ~/.config/zsh/aliases.zsh
alias x="startx"
#PS1='[\u@\h \W]\$ '

#export PS1="\[\e[0;36m\]\u \[\e[0;32m\]\w \[\e[0;31m\]> \[\e[0m\]"
eval "$(starship init bash)"
