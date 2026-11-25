#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then
  echo "Usage: ./push_to_github.sh <your-github-username>"
  exit 1
fi
git init -b main
git add .
git commit -m "Initial commit: Davis Basement Workshop v22 (160 tools, 73 drawer photos, PBR 3D)"
git remote add origin "https://github.com/$1/davis-basement-workshop.git"
git push -u origin main
echo "Done! Enable GitHub Pages at: https://github.com/$1/davis-basement-workshop/settings/pages"
