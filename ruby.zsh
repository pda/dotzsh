# chruby
CHRUBY_INIT=/usr/local/share/chruby/chruby.sh
CHRUBY_AUTO=/usr/local/share/chruby/auto.sh
[ -f $CHRUBY_INIT ] && source $CHRUBY_INIT
[ -f $CHRUBY_AUTO ] && source $CHRUBY_AUTO
unset CHRUBY_INIT CHRUBY_AUTO

# Bundler
alias bx="bundle exec"
