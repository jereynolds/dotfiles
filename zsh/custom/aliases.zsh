# Rails aliases
alias dbm="rake db:migrate"
alias z="zeus"
zroute() { zeus rake routes | ag $@ }

alias ls="gls --color"
alias sl="ls"

# Git aliases
alias gs="git status"
alias gl="git log"
alias gsl="git stash list"
alias gsp="git stash pop"
alias gc="git commit -m"
alias gpp="git pull; git push"
alias gd="git diff"
alias gds="git diff --staged"
alias gap="git add -p ."

alias vi="vim"

ctags_refresh() {
  ctags -R .
  ctags -R -f ./.git/tags
}
