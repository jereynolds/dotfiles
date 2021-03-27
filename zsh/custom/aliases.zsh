# Shell aliases
alias ls="ls --color"
alias b="aid begin"
alias dbm="rake db:migrate && RAILS_ENV=test rake db:migrate"
alias l="ls -al"
alias j=z # I'm used to autojump 'j' vs fasd 'z'
alias less="less -r"
alias sketch="magick $1 \( -clone 0 -negate -blur 0x5 \) \
  -compose colordodge -composite -modulate 100,0,100 -auto-level $2"
alias srync="rsync -vrazh"
alias tk="tmux kill-session"
alias tn="rvm . do tmuxinator"
alias vim="nvim"
alias work="cd ~/code/boundless && tn start boundless"

# OS X apps
alias bat="open -a 'Adobe Acrobat' $@"
alias md="open -a Markoff $@"

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

function pgrefresh() {
  rm -fr /usr/local/var/postgres/postmaster.pid
  brew services restart postgresql
}

function sslcert() {
  echo | \
    openssl s_client -showcerts -servername $1 -connect $1:443 2>/dev/null | \
    openssl x509 -inform pem -noout -text
}

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
