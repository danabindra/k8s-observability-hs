#!/bin/bash
# Manual GitHub repo creation script
# Usage: ./create_repo_manual.sh <repo-name>

set -e
REPO_NAME=${1:-"k8s-observability-hs"}
GITHUB_USER="danabindra"

echo "Setting up repository: $REPO_NAME"
echo "GitHub user: $GITHUB_USER"

# Initialize git repository
git init
git add .
git commit -m "Initial commit: Add scripts and utilities"

echo ""
echo "✅ Repository initialized locally!"
echo ""
echo "📋 Next steps:"
echo "1. Go to https://github.com/new"
echo "2. Create repository: $REPO_NAME"
echo "3. Run: git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "4. Run: git push -u origin main"
echo ""
echo "Or use SSH:"
echo "3. Run: git remote add origin git@github.com:$GITHUB_USER/$REPO_NAME.git"
echo "4. Run: git push -u origin main" 