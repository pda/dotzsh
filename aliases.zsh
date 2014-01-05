alias pstree="pstree -g 2"
alias hd="hexdump -C"
alias ls="ls --color=auto"

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

# Use colordiff wrapper for diff if present.
(( $+commands[colordiff] )) &&
  alias diff="colordiff"

# BSD / Mac OS X has jot instead of seq.
(( $+commands[seq] )) ||
  alias seq="jot"
