### PATH STUFF ###
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $HOME/.config/scripts $fish_user_paths

### EXPORT ###
set TERM "xterm-256color"                # Sets the terminal type
set fish_greeting                        # Supress fish's greeting
set EDITOR "nvim"
set VISUAL "code"

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

# Complete update (why tf is this still here)
function up
	sudo pacman -Syyu
	paru -Sua
	echo 'Recherche des mises à jour flatpak...'
	flatpak update
end

# Function for creating a backup file
function backup --argument filename
	cp $filename $filename.bak
end

# Function for copying files and directories, even recursively.
# ex: copy DIRNAME LOCATIONS
# result: copies the directory and all of its contents.
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end

# Create a simlink to set the wallpaper on awesomewm
function wallsym --argument filename
	/bin/rm ~/.config/wallpaper
	ln -rs $filename ~/.config/wallpaper
end

# Yanderedev go brrrr
function cfg --argument cfgfile
	switch "$cfgfile"
		case "fish"
			$EDITOR ~/.config/fish/config.fish
			source ~/.config/fish/config.fish
        case "fisha"
            $EDITOR ~/.config/fish/aliases.fish
            source ~/.config/fish/aliases.fish
        case "aliases"
            $EDITOR ~/.config/fish/aliases.fish
			source ~/.config/fish/aliases.fish
		case "alacritty"
			$EDITOR ~/.config/alacritty/alacritty.yml
		case "qtile"
			$EDITOR ~/.config/qtile/config.py
		case "awesome"
			$EDITOR ~/.config/awesome/rc.lua
		case "picom"
			$EDITOR ~/.config/picom/picom.conf
        case "beet"
            $EDITOR ~/.config/beets/config.yaml
        case "nvim"
            $EDITOR ~/.config/nvim/init.vim
        case "starship"
            $EDITOR ~/.config/starship.toml
	end
	return
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
### FUNCTIONS END ###

# Aliases file
source ~/.config/fish/aliases.fish

pfetch
#fortune -a -c | cowsay | lolcat # pip install lolcat (less deps)

# Starship prompt
starship init fish | source
