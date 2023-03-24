#!/usr/bin/env fish

### PATH STUFF ###
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $HOME/.config/scripts $fish_user_paths

### EXPORT ###
set TERM "xterm-256color"                # Sets the terminal type
set fish_greeting                        # Supress fish's greeting
set EDITOR "nvim"
set VISUAL "code"
set -U fish_features all

# ENV VARS
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'" 

# cleanup
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config

function fish_user_key_bindings
    fish_default_key_bindings
    # fish_vi_key_bindings
  end
  
### EXPORT END ###


### FUNCTIONS ###
# Play audio files in the terminal.
function play
    echo "Playing" (realpath $argv) " ..."
    ffplay -hide_banner -nodisp $argv &>/dev/null
end

# Create a simlink to set the wallpaper on awesomewm
function wallsym --argument filename
	/bin/rm ~/.config/wallpaper
	ln -rs $filename ~/.config/wallpaper
end

# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
# The bindings for !! and !$
if [ $fish_key_bindings = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# use rsync to copy files (quicker + progress bar)
function cpv --argument path
    rsync -pogbr -hhh --backup-dir="/tmp/rsync-$USERNAME" -e /dev/null --progress "$path"
end

function twitch --argument streamer
    mpv "https://twitch.tv/$streamer" 2> /dev/null
end
### FUNCTIONS END ###

# Aliases file
source ~/.config/fish/aliases.fish
source ~/.config/fish/completions/beet.fish

pfetch

# Starship prompt
starship init fish | source
