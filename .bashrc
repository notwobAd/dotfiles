#
# ~/.bashrc
#

source /usr/share/nvm/init-nvm.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim

eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/themes/mojada.omp.json)"
eval "$(fzf --bash --style full)"

alias ls='ls --color=auto'
alias ll='eza --all --long --git --header --time-style long-iso --icons=always'
alias lt='eza --all --tree --level=2 --git --header --time-style long-iso --icons=always'
alias cl='clear'
alias hc='history -c && history -w'
alias sps='sudo pacman -S'
alias fetch='fastfetch'
alias pxy="export HTTP_PROXY='http://127.0.0.1:7890' HTTPS_PROXY='http://127.0.0.1:7890'"
alias rm='rm -I'
alias gs='git status'
alias ginit='git init'
alias gadd='git add'
alias gco='git commit'
alias gcl='git clone'
alias gpush='git push'
alias gpull='git pull'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias dotfiles='git --git-dir=$HOME/dotfiles --work-tree=$HOME/.config'

[ ! -e ~/.dircolors ] && eval $(dircolors -p > ~/.dircolors)
[ -e /bin/dircolors ] && eval $(dircolors -b ~/.dircolors)

PS1='[\u@\h \W]\$ '
