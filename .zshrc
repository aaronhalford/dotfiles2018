# 256 color
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

# fpath
fpath=( "$HOME/.zfunctions" $fpath)

# prompt - pure via https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# suggestion support
autoload -Uz compinit; compinit

# save operating system as variable
# req for selection of correct aliases
LSB_DISTRIBUTOR=`lsb_release -i -s`

# PATH
# add custom path here
path+=~/bin

# exports
export EDITOR=vim
export VISUAL=vim
export PAGER=less
export HISTFILE=~/.zhistory
export HISTSIZE=9001
export SAVEHIST=9001
export LANG="en_US.UTF-8"

# history
setopt inc_append_history           # incrementally append rather than overwrite history
setopt extended_history             # save timestamp and runtime info
setopt share_history                # import new commands from the history file also in other zsh-session
setopt hist_reduce_blanks           # remove blank lines from history
setopt hist_ignore_all_dups         # remove all duplicates from history
setopt hist_find_no_dups            # [unset] ignore dupes in history search
setopt hist_ignore_dups             # this will not put _consecutive_ duplicates in the history
setopt hist_ignore_space            # if any command starts with a whitespace, it will not be saved
setopt hist_verify                  # [unset] for history substitution, put the substituted line into the line editor

# corrections
unsetopt correct_all                # Do not autocorrect commands & file names
setopt completeinword               # not just at the end
setopt nobeep                       # avoid beeping

# arrow up/down searches in history if line is already started
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# lazy fixes
alias c='clear'
alias edit='vim'
alias g='git'
alias mkdir='mkdir -pv'
alias todo='$EDITOR ~/todo.txt'
alias tmux='tmux -2'

# hardware and sofware specific fixes
alias fixadb='sudo adb devices'

# force conformation for destructive files commands
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ls
alias ls='ls --color -h --group-directories-first'
alias ll='ls --color -lAFh --group-directories-first'
alias lc='colorls -lA --sd'

# cd navigation
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# open current directory in file explorer (and with root)
alias files='nautilus .'
alias sfiles='sudo nautilus .'

# aliases - debian and ubuntu
if [[ "$LSB_DISTRIBUTOR" == "Ubuntu" ]]; then
  alias search='apt-cache show'
  alias install='sudo apt-get install'
  alias update='sudo apt-get update'
  alias upgrade='sudo apt-get upgrade'
  alias uninstall='sudo apt-get uninstall'
  alias purge='sudo apt-get purge'
  alias autoremove='sudo apt-get autoremove'
  alias ctl='sudo service '
  alias sleepytime='sudo shutdown -h now'
fi

# aliases - antergos and arch linux
if [[ "$LSB_DISTRIBUTOR" == "Arch" ]]; then
  alias ctl='sudo systemctl '
  alias start='sudo systemctl start'
  alias stop='sudo systemctl stop'
  alias status='sudo systemctl status'
  alias restart='sudo systemctl restart'
  alias install='sudo pacman -S'
  alias update='sudo pacman -Syu'
  alias remove='sudo pacman -Rsn'
  alias search='pacman -Ss'
  alias clean='sudo pacman -Sc'
  alias aurupdate='pacaur -Syu' # req pacaur
  alias removeorphans="pacman -Rns $(pacman -Qtdq)" # remove all orphan packages
fi

# aliases - application cpupower
alias watchcpu='watch -n 5 cpupower frequency-info'
alias performance='sudo cpupower frequency-set -g performance'
alias powersave='sudo cpupower frequency-set -g powersave'

# aliases - application youtube-dl
#alias ytdlu='youtube-dl -citwv -f best'                                                                                                 # download entire youtube user with verbose, resume, and best quality
#alias ytdla='youtube-dl -ciwvx -f bestaudio --output "%(uploader)s - %(title)s - %(id)s.%(ext)s"'                                       # extract audio and delete video source file
#alias ytdlv='youtube-dl -ciwv -f best --output "%(uploader)s - %(title)s - %(id)s.%(ext)s"'                                             # video only in best quality
#alias ytdlb='youtube-dl -ciwvxk -f best --output "%(uploader)s - %(title)s - %(id)s.%(ext)s"'                                           # best quality, extract audio, keep video, verbose, name template
#alias ytdlp='youtube-dl -ciwvxk -f best --output "%(uploader)s - %(playlist_title)s - %(playlist_index)s - %(title)s - %(id)s.%(ext)s"' # playlist extract audio (does not get best quality???)
alias ytdlpo='youtube-dl --output "%(uploader)s - %(playlist_title)s - %(playlist_index)s - %(title)s - %(id)s.%(ext)s"'                # output template only, run -F to get best formats for (-f video+audio)

# function - change directory with auto clear and ls
function chpwd() {
  emulate -L zsh
  #clear && ls -A --color --group-directories-first
  clear && colorls -A --sd --light
}

# function - colored man pages with less command
function man() {
  LESS_TERMCAP_md=$'\e[01;31m' \
  LESS_TERMCAP_me=$'\e[0m' \
  LESS_TERMCAP_se=$'\e[0m' \
  LESS_TERMCAP_so=$'\e[01;44;33m' \
  LESS_TERMCAP_ue=$'\e[0m' \
  LESS_TERMCAP_us=$'\e[01;32m' \
  command man "$@"
}

# asdf-vm/asdf
[ -f ~/.asdf/asdf.sh ] && source ~/.asdf/asdf.sh
[ -f ~/.asdf/completions/asdf.bash ] && source ~/.asdf/completions/asdf.bash

# junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# athityakumar/colorls
[ -f "$(dirname $(gem which colorls))/tab_complete.sh" ] && source $(dirname $(gem which colorls))/tab_complete.sh

# zsh-users/zsh-completions
### auto sourced by AUR installer!

# zsh-users/zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


