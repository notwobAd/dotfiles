#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim

eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/themes/mojada.omp.json)"
eval "$(fzf --bash --style full)"

alias ls='ls --color=auto'
alias ll='eza --all --long --git --header --time-style long-iso --icons=always'
alias cl='clear'
alias hc='history -c && history -w'
alias sps='sudo pacman -S'
alias fetch='fastfetch'
alias pxy="export HTTP_PROXY='http://127.0.0.1:7890' HTTPS_PROXY='http://127.0.0.1:7890'"
alias rm='rm -I'
alias g='git'
alias gta='git add'
alias gtc='git commit'
alias gtcl='git clone'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias dotfiles='git --git-dir=$HOME/dotfiles --work-tree=$HOME/.config'

[ ! -e ~/.dircolors ] && eval $(dircolors -p > ~/.dircolors)
[ -e /bin/dircolors ] && eval $(dircolors -b ~/.dircolors)

PS1='[\u@\h \W]\$ '
