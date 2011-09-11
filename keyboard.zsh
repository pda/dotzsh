# vi mode
bindkey -v

# The time the shell waits, in hundredths of seconds, for another key
# to be pressed when reading bound multi-character sequences.
#
# Set to shortest possible delay is 1/100 second.
# This allows escape sequences like cursor/arrow keys to work,
# while eliminating the delay exiting vi insert mode.
KEYTIMEOUT=1

# Ctrl-R for reverse incremental search
bindkey "^R" history-incremental-search-backward
