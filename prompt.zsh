# vi mode
# Selects the viins / vicmd keymaps.
# See: man zshzle
bindkey -v

export PROMPT=$'%n@%m %~ %{\e[0;%(?.32.31)m%}⸩%{\e[0m%} '
