#!/usr/bin/env bash
# Davis Basement v25 Clean Redeploy Script (Mac / Linux / Git Bash)
# Usage: ./redeploy_clean.sh https://github.com/YOUR_USERNAME/davis-basement-workshop.git
set -euo pipefail
REPO_URL="${1:-}"
if [ -z "$REPO_URL" ]; then
  echo "Usage: ./redeploy_clean.sh https://github.com/YOUR_USERNAME/davis-basement-workshop.git"
  exit 1
fi

rm -rf .git
git init -b main
git add -A
git commit -m "Clean deploy: Davis Basement Workshop v25 (114 images in images/, cleared root & v22 cache)"
git remote add origin "$REPO_URL"
git push --force -u origin main
echo "DONE! Stray root photos wiped and v25 pushed cleanly to main."
