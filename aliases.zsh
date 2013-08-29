alias pstree="pstree -g 2"
alias hd="hexdump -C"

# Make and change to a timestamp directory.
mkts() {
  local ts=`date +%Y%m%d-%H%m%S`
  mkdir $ts && cd $ts
}

# See: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
if (( $+commands[reattach-to-user-namespace] )); then
  for cmd in vim pbcopy pbpaste launchd; do
    alias $cmd="reattach-to-user-namespace $cmd"
  done
fi

# Use colordiff wrapper for diff if present.
(( $+commands[colordiff] )) &&
  alias diff="colordiff"

# BSD / Mac OS X has jot instead of seq.
(( $+commands[seq] )) ||
  alias seq="jot"
