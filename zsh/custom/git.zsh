# fuzzy find branch checkout
function fco() {
  git checkout $(git branch -a --sort=-committerdate | \
      cut -c 3- | \
      sed 's/^remotes\/[^/]*\///' | \
      sort | \
      uniq | \
      grep -v HEAD | \
      fzf-tmux -d 20)
}

alias gs="git status"
alias gb="git branch -v"
alias gl="git log --date=short --graph"

alias ga="git add"
alias gan="git add -N"
alias gap="git add -p"

alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit -am"
alias gamend="git commit --amend"

alias gco="git checkout"
alias gcob="git checkout -b"

alias gstash="git stash"
alias gsi="git stash --keep-index"
alias gsl="git stash list"
alias gsp="git stash pop"
alias gsd="git stash drop"
alias gsa="git stash apply"

alias gd="git diff"
alias gds="git diff --staged"
