# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# PERSONAL CONFIGS
set EDITOR "vim"

# KEYBOARD LAYOUT
setxkbmap -layout us,no
setxkbmap -option 'grp:alt_shift_toggle'

# ALIASES
alias ll="ls -lah --color='auto'"
alias cp="cp -i"
alias mv="mv -i"

# EXPORTS
# adding GOPATH to PATH
export PATH="$PATH:/home/jan/go/bin"
