alias pstree="pstree -g 2"
alias hd="hexdump -C"

# See: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
(( $+commands[reattach-to-user-namespace] )) &&
  alias vim="reattach-to-user-namespace vim"
