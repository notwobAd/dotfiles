#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim

eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/themes/mojada.omp.json)"

alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -latr'
alias cl='clear'
alias hc='history -c'
alias sps='sudo pacman -S'
alias fetch='fastfetch'
alias pxy="export HTTP_PROXY=localhost:7890 HTTPS_PROXY=localhost:7890"
alias gta='git add'
alias gtc='git commit'
alias gtcl='git clone'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

[ ! -e ~/.dircolors ] && eval $(dircolors -p > ~/.dircolors)
[ -e /bin/dircolors ] && eval $(dircolors -b ~/.dircolors)

PS1='[\u@\h \W]\$ '
