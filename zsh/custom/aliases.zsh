# Shell aliases
alias ls="ls --color"
alias l="ls -al"
alias less="less -r"
alias srync="rsync -vrazh"
alias tk="tmux kill-session"
alias tn="rvm . do tmuxinator"
alias vim="nvim"

# Git
function fco() {
  git checkout $(git branch -a --sort=-committerdate | \
      cut -c 3- | \
      sed 's/^remotes\/[^/]*\///' | \
      sort | \
      uniq | \
      grep -v HEAD | \
      fzf-tmux -d 20)
}

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
