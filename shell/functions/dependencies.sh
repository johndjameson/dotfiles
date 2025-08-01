# ****************************************************
#
#   Functions - Dependencies
#   -> Specified tasks required elsewhere
#
# ****************************************************

# ----------------------------------------------------
#   Git
# ----------------------------------------------------

# ----- Parse Git Branch ----- #
# Get the current Git branch
#
# Usage: `git_current_branch`

function git_current_branch() {
  local ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  printf "${ref#refs/heads/}"
}

# ----- Git Default Branch ----- #
# Get the default Git branch
#
# Usage: `git_default_branch`

function git_default_branch() {
  local branch=$(git rev-parse --abbrev-ref origin/HEAD | sed 's/^origin\///') || return
  printf "${branch}"
}
