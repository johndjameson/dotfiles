# ****************************************************
#
#   Zsh
#   -> User-defined Zsh settings
#
# ****************************************************

# ----------------------------------------------------
#   Imports
# ----------------------------------------------------

# ----- Setup ----- #

SHELL_EXT='zsh'

# ----- Shared ----- #

. ~/.dotfiles/shell/aliases
. ~/.dotfiles/shell/config
. ~/.dotfiles/shell/functions/dependencies
. ~/.dotfiles/shell/functions/general
. ~/.dotfiles/shell/functions/git

# Local

if [ -d ~/.dotfiles-local ]; then
  . ~/.dotfiles-local/shell/aliases
else
  echo '.dotfiles-local not installed'
fi

# -------------------------------------
#   Zsh-specific config
# -------------------------------------

export ZDOTDIR="$HOME/.dotfiles/zsh"
export HISTFILE="$ZDOTDIR/.zsh_history"

alias reload='zsh --login'
alias switch='bash --login'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/john/.lmstudio/bin"
# End of LM Studio CLI section

