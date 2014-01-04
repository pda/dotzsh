# vi mode
# Selects the viins / vicmd keymaps.
# See: man zshzle
bindkey -v

# Fancy UTF-8 if the terminal can handle it, e.g. iTerm2 and uxterm.
# Boring ASCII for xterm where XTERM_LOCALE="C".
if [[ -z $XTERM_LOCALE || $XTERM_LOCALE =~ "UTF-8" ]]; then
  PROMPTCHAR="⸩"
else
  PROMPTCHAR=">"
fi

export PROMPT=$'%n@%m %~ %{\e[2;%(?.32.31)m%}$PROMPTCHAR%{\e[0m%} '
