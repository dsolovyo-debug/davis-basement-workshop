#!/usr/bin/env bash
set -e
USER="${1:?Usage: ./push_to_github.sh YOUR_GITHUB_USERNAME}"
git init -b main
git add .
git commit -m "Deploy Davis Basement Workshop v24 (Exact Wall Alignment + Deep-Zoom Wall Hotspots + 73 Drawers)"
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/${USER}/davis-basement-workshop.git"
git push -u origin main --force
echo "Live soon at: https://${USER}.github.io/davis-basement-workshop/"
