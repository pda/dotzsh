vim() {
  # Save current stty options.
  local STTYOPTS="$(stty -g)"

  # Disable intercepting of ctrl-s and ctrl-q as flow control.
  stty stop '' -ixoff -ixon

  command vim "$@"

  # Restore saved stty options.
  stty "$STTYOPTS"
}
