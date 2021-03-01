# vi mode
# Selects the viins / vicmd keymaps.
# See: man zshzle
bindkey -v

export PROMPT=$'%n@%m %~ %{\e[2;%(?.32.31)m%}%(!.#.\$)%{\e[0m%} '
