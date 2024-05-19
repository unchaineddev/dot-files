# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[blue]%}@%{$fg[green]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

export LS_COLORS="di=1;33:ln=35:so=32:pi=33:ex=1;31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=1;34:ow=1;34:fi=32"

# Set name of the theme to load --- if set to "random"
ZSH_THEME="amuse"

ENABLE_CORRECTION="true"
plugins=(git python zsh-interactive-cd zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8

export EDITOR='nvim'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export VISUAL=vim
export EDITOR="$VISUAL"
alias xx="exit"

# private window
alias pw="firefox --private-window"

alias yta="yt-dlp -x --audio-format best --embed-thumbnail"
alias ytv="yt-dlp -f 'bv*[height=1080]+ba"
alias yt720="yt-dlp -f 'bv*[height=720]+ba"
alias vv='vim "$(fzf)"'
alias rg="ranger"
alias cdpy="cd python/"
# Search for Unique Command in history and copies to clipboard
alias hist="history | cut -c 8- | sort | uniq | fzf | tr -d '\n' | xclip -selection -c"
alias ffsc="ffmpeg -f x11grab -s 1920x1080 -i :0.0 out.mkv"
alias ffwa="ffmpeg -f x11grab -s 1920x1080 -i :0.0 -f alsa -i hw:1 out.mkv"
alias wifilst="nmcli dev wifi list"
alias dualm="xrandr --output HDMI-A-0 --auto --left-of eDP"
