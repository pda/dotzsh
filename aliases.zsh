alias pstree="pstree -g 2"
alias hd="hexdump -C"
alias dc="docker-compose"

# most remote systems don't understand tmux-256color etc.
alias ssh="TERM=${TERM/tmux/xterm} ssh"

# RFC 822 date format; HTTP etc. Not built in to BSD `date`.
alias date822="date '+%a, %d %h %Y %H:%M:%S %z'"
alias date8601="date -u '+%Y-%m-%dT%H:%M:%SZ'"

# mkdir and cd into a directory, defaults to current timestamp.
function mkcd {
  local dir=$1
  [[ -n $dir ]] || dir=$(date +%Y%m%d-%H%m%S)
  [[ -e $dir ]] && echo "Already exists: $dir" && return 1
  mkdir -p "$dir" && cd "$dir"
}
