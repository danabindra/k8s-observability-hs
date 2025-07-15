#!/bin/bash
# Create GitHub repo
# Usage: ./create_gh_repo.sh <repo-name> [description]

set -e
REPO_NAME=${1:-"my-repo"}
DESCRIPTION=${2:-"New repository"}

gh repo create "$REPO_NAME" --public --description "$DESCRIPTION" --clone
cd "$REPO_NAME"
echo "# $REPO_NAME" > README.md
git add . && git commit -m "Initial commit"
git push -u origin main
echo "Repository created: https://github.com/$(gh api user --jq .login)/$REPO_NAME" 