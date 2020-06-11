# Path to Oh My Fish install.
set -q XDG_DATA_HOME
and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Defalt apps
set EDITOR "nvim"
set TERM "st"

fish_vi_key_bindings

### RANDOM COLOR SCRIPT ###
/opt/shell-color-scripts/colorscript.sh random


## ALIASES ##
#vim
alias v="nvim"
alias vim="nvim"
alias sv="sudo vim"

# pacman/yay
alias del='yay -R'
alias upd="yay -Syu"
alias i="yay -S"
alias srch="yay -Q | grep"
alias autoremove='sudo pacman -Rcns (pacman -Qdtq)'

# grub
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias grub-customizer="gksu grub-customizer"

# ls/exa
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# grep
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# systemctl
alias SS="sudo systemctl"

# system stuff
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias ka='killall'
alias g='git'
alias more=less


## ABBREVIATIONS ##
# mongodb
abbr mongod 'mongod --port 27017 --auth --dbpath $HOME/db/mongodb/'

# doom-emacs
abbr doom '~/.emacs.d/bin/doom sync'

# system stuff
abbr cfa 'nvim $HOME/.config/awesome/rc.lua'
abbr cfv 'nvim $HOME/.vimrc'
abbr cfb 'nvim $HOME/.bashrc'
abbr se 'fzf | xargs -r -I % $EDITOR %'

# utils
abbr neofetch 'neofetch --ascii $HOME/pix/ascii/arch-test.txt'
abbr ytv 'youtube-dl -o "~/vids/%(title)s.%(ext)s"' #Download video link
abbr yta 'youtube-dl -o "~/musx/%(title)s.%(ext)s" -x --audio-format mp3' #Download only audio
abbr redditWall 'node $HOME/scripts/nodeRedditDownloader/wallpaperDownloader -d -t day -p new -l 100 -mw 1920 -mh 1080 -s'

# books
abbr rpf 'zathura ~/dox/books/fizyka_formula_zno.pdf'
abbr rlt 'zathura ~/dox/books/Komandnaia_stroka_Linux.pdf' abbr rb 'zathura ~/dox/'


