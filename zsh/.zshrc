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

. ~/.dotfiles/shell/aliases.sh
. ~/.dotfiles/shell/config.sh
. ~/.dotfiles/shell/functions/dependencies.sh
. ~/.dotfiles/shell/functions/general.sh
. ~/.dotfiles/shell/functions/git.sh

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
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi


# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/john/.lmstudio/bin"
# End of LM Studio CLI section

