alias pstree="pstree -g 2"
alias hd="hexdump -C"
alias dc="docker-compose"

# RFC 822 date format; HTTP etc. Not built in to BSD `date`.
alias date822="date '+%a, %d %h %Y %H:%M:%S %z'"

# mkdir and cd into a directory, defaults to current timestamp.
function mkcd {
  local dir=$1
  [[ -n $dir ]] || dir=`date +%Y%m%d-%H%m%S`
  [[ -e $dir ]] && echo "Already exists: $dir" && return 1
  mkdir -p $dir && cd $dir
}

# See: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
if (( $+commands[reattach-to-user-namespace] )); then
  for cmd in pbcopy pbpaste launchd; do
    alias $cmd="reattach-to-user-namespace $cmd"
  done
fi

# BSD / Mac OS X has jot instead of seq.
(( $+commands[seq] )) ||
  alias seq="jot"
