alias pstree="pstree -g 2"
alias hd="hexdump -C"

# Make and change to a timestamp directory.
mkts() {
  local ts=`date +%Y%m%d-%H%m%S`
  mkdir $ts && cd $ts
}

# See: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
(( $+commands[reattach-to-user-namespace] )) &&
  alias vim="reattach-to-user-namespace vim"

# Use colordiff wrapper for diff if present.
(( $+commands[colordiff] )) &&
  alias diff="colordiff"
