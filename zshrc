# Some of this is from Elliott Cable's dotfiles
# https://github.com/elliottcable/System

if [ -f $HOME/.profile ]; then
  source $HOME/.profile
fi

setopt prompt_subst
setopt hist_ignore_dups

. ~/.prompt
. ~/.functions

# History
# ===========================

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=25000
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE

# Key Bindings
# ===========================

unsetopt SINGLE_LINE_ZLE
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward