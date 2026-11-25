#!/usr/bin/env bash
set -euo pipefail
USER="${1:-dsolovyo-debug}"
REPO="${2:-davis-basement-workshop}"
REMOTE="https://github.com/${USER}/${REPO}.git"

echo "Initializing & pushing Davis Basement Workshop (v22) to ${REMOTE}..."
git init -b main
git add .
git commit -m "Deploy Davis Basement Workshop v22 (160 tools, 73 drawer/cubby photos, PBR 3D)"
git remote remove origin 2>/dev/null || true
git remote add origin "${REMOTE}"
git push -u origin main
echo ""
echo "Done! Next: open https://github.com/${USER}/${REPO}/settings/pages"
echo "Set Source -> Deploy from a branch -> main / (root) -> Save."
echo "Live URL: https://${USER}.github.io/${REPO}/"
