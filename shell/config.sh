# ****************************************************
#
#   Config
#   -> Environment settings
#
# ****************************************************

# ----------------------------------------------------
#   Path
# ----------------------------------------------------

PATH_DIRECTORIES=(
  "~/.dotfiles/bin"
  "~/.pyenv/bin"
  '/usr/local/opt/python/libexec/bin'
  '/usr/local/bin'
  '/usr/local/sbin'
  '/opt/homebrew/bin'
  '/opt/homebrew/sbin'
  '/usr/bin'
  '/bin'
  '/usr/sbin'
  '/sbin'
  '/opt/X11/bin'
)

export PATH=$(IFS=:; echo "${PATH_DIRECTORIES[*]}")

# ----------------------------------------------------
#   Scripts
# ----------------------------------------------------

# ----- Autojump ----- #

[ -s "$(brew --prefix)/etc/profile.d/autojump.sh" ] && . "$(brew --prefix)/etc/profile.d/autojump.sh"

# ----- Homebrew ----- #

export HOMEBREW_BUNDLE_NO_LOCK=1
export HOMEBREW_CASK_OPTS='--appdir=/Applications'
export HOMEBREW_NO_ANALYTICS=1

# ----- FNM ----- #

eval "$(fnm env)"

enter_directory() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi

  PREV_PWD=$PWD

  if [[ -f .node-version || -f .nvmrc ]]; then
    fnm use --silent-if-unchanged
  fi
}

# ----- Git ----- #

export GIT_CONFIG_GLOBAL="$HOME/.dotfiles/git/gitconfig"

# ----- Less ----- #

export LESSHISTFILE="$HOME/.cache/less/lesshst"

# ----- Node ----- #

export NODE_REPL_HISTORY="$HOME/.cache/node/node_repl_history"

# ----- OpenSSL ----- #

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl/lib/"

# ----- Pyenv ----- #

if [ -d ~/.pyenv ]; then
  eval "$(pyenv init --path)"
  eval "$(pyenv virtualenv-init -)"
fi

# ----- rbenv ----- #

eval "$(rbenv init - $SHELL_EXT)"

# ----- Ripgrep ----- #

export RIPGREP_CONFIG_PATH="$HOME/.dotfiles/ripgrep/ripgreprc"

# ----- Rust ----- #

if [ -f ~/.cargo/env ]; then
  . ~/.cargo/env
fi

# ----- SSH ----- #

ssh-add -K ~/.ssh/id_rsa &> /dev/null

# ----- Starship ----- #

eval "$(starship init $SHELL_EXT)"

# ----------------------------------------------------
#   User Interface
# ----------------------------------------------------

# ----- Colors ----- #

# Enable colorful output globally
export CLICOLOR=true
export CLICOLOR_FORCE=true
