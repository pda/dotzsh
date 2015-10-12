# chruby
CHRUBY_INIT=/usr/local/share/chruby/chruby.sh
[ -f $CHRUBY_INIT ] && source $CHRUBY_INIT
unset CHRUBY_INIT

# Bundler
alias bx="bundle exec"
