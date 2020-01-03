function {
  local candidates=(
    "/usr/share/chruby/chruby.sh"       # e.g. Arch linux
    "/usr/local/share/chruby/chruby.sh" # e.g. macOS
  )
  for chruby in $candidates; do
    if [[ -f $chruby ]]; then
      source $chruby
      break
    fi
  done
}

# Bundler
alias bx="bundle exec"
