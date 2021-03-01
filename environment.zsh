export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"

export EDITOR=nvim

export CLICOLOR=1

export PROMPT_EOL_MARK=💀

# command history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=HISTSIZE

# Load ripgrep (rg) config from disk.  At time of writing, it sets --hidden
# --glob=!.git so that hidden files other than the git repository internals are
# included in search, including in nvim/fzf.
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

# Use `ripgrep` instead of the default `find` command as fzf input.
# This makes nvim/fzf faster & better, especially when combined with RIPGREP_CONFIG_PATH.
export FZF_DEFAULT_COMMAND="rg --files"
