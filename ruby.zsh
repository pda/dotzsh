function {
  local init=/usr/local/share/chruby/chruby.sh
  [ -f $init ] && source $init
}

# Bundler
alias bx="bundle exec"
