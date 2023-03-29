# Shell aliases
alias ls="ls --color"
alias l="ls -al"
alias less="less -r"
alias srync="rsync -vrazh"
alias tk="tmux kill-session"
alias tn="rvm . do tmuxinator"
alias vim="nvim"
alias vi="nvim ."

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
