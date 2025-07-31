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
# Usage: `parse_git_branch`

function parse_git_branch() {
  local ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  printf "${ref#refs/heads/}"
}
