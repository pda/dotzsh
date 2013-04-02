# Ruby 1.9.3 performance: FEED ME RAM.
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

# rbenv
(( $+commands[rbenv] )) &&
  eval "$(rbenv init -)"

# chruby
CHRUBY_INIT=/usr/local/share/chruby/chruby.sh
CHRUBY_AUTO=/usr/local/share/chruby/auto.sh
[ -f $CHRUBY_INIT ] && source $CHRUBY_INIT
[ -f $CHRUBY_AUTO ] && source $CHRUBY_AUTO
unset CHRUBY_INIT CHRUBY_AUTO

# Bundler
alias bx="bundle exec"
