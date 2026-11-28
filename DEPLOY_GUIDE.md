# Davis Basement Workshop v25 — Clean Redeploy Guide

## Why v22 Was Stuck & Why Photos Went to Root
1. **Stale v22 Service Worker Cache**: v22 installed an offline `sw.js` that kept serving the old cached `index.html`. This package includes a cache-clearing `sw.js` + auto-unregister snippet so v25 loads immediately on both computer and phone.
2. **GitHub Web UI 100-File Limit**: GitHub's browser uploader caps at 100 files and flattens folder drops into the root folder. Use one of the 3 clean methods below instead!

## Option 1 — 1-Command Clean Reset & Push (Fixes Stray Root Photos Automatically!)
Unzip this folder, open a terminal inside it, and run:
- **Windows (PowerShell)**:
  `.\redeploy_clean.ps1 -RepoUrl "https://github.com/YOUR_USERNAME/davis-basement-workshop.git"`
- **Mac / Linux / Git Bash**:
  `./redeploy_clean.sh https://github.com/YOUR_USERNAME/davis-basement-workshop.git`

This wipes all 100+ stray `.jpg` files in the GitHub root folder and uploads `index.html`, `sw.js`, `.nojekyll`, `manifest.json`, and all 114 photos inside `images/` in one shot.

## Option 2 — GitHub Desktop (Visual, No Terminal, No 100-File Limit)
1. Open **GitHub Desktop** -> clone your `davis-basement-workshop` repo -> click **Show in Explorer / Finder**.
2. Delete everything inside that repo folder (except the hidden `.git` folder).
3. Copy all files & the `images/` folder from this unzipped v25 folder into the repo folder.
4. In GitHub Desktop, click **Commit to main** -> **Push origin**.

## Option 3 — Cloudflare Pages Direct Upload (Easiest Zero-Git Option)
1. Go to **Cloudflare Dashboard -> Workers & Pages -> Create -> Pages -> Direct Upload**.
2. Drag-and-drop this entire unzipped folder (no 100-file limit!) and click **Deploy site**.
