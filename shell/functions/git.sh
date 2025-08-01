# ****************************************************
#
#   Functions - Git
#   -> Git-specified tasks
#
# ****************************************************

# ----------------------------------------------------
#   Commands
# ----------------------------------------------------

# ----- Rebase HEAD ----- #
# Rebases the current branch X commits
#
# $1 - '1', '2', ...
#
# Usage: `git_rebase_head

function git_rebase_head() {
  git rebase --interactive "HEAD~$1"
}

# ----- Reset (Soft) ----- #
# Soft reset the branch back a number of commits
#
# $1 - '1', '2', ...
#
# Usage: `git_reset_soft 1`

function git_reset_soft() {
  git reset --soft "HEAD~$1"
}

# ----- Branch Origin Default ----- #

function git_branch_origin_default() {
	local branch=$1
	git fetch
	git checkout -b $branch $(git rev-parse --abbrev-ref origin/HEAD)
}
