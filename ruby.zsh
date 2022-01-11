function {
  local candidates=(
    "/usr/local/share/chruby" # e.g. macOS
    "/usr/share/chruby"       # e.g. Arch linux
  )
  for d in "${candidates[@]}"; do
    if [[ -d $d ]]; then
      source "$d/chruby.sh"
      source "$d/auto.sh"
      break
    fi
  done
}

# Bundler
alias bx="bundle exec"
