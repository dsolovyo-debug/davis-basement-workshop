# Davis Basement v25 Clean Redeploy Script (Windows PowerShell)
# Usage: .\redeploy_clean.ps1 -RepoUrl "https://github.com/YOUR_USERNAME/davis-basement-workshop.git"
param(
  [Parameter(Mandatory=$true)]
  [string]$RepoUrl
)

$ErrorActionPreference = "Stop"
Write-Host "Cleaning & redeploying Davis Basement v25 (114 images in images/) to $RepoUrl ..." -ForegroundColor Cyan

if (Test-Path ".git") { Remove-Item -Recurse -Force ".git" }
git init -b main
git add -A
git commit -m "Clean deploy: Davis Basement Workshop v25 (114 images in images/, cleared root & v22 cache)"
git remote add origin $RepoUrl
git push --force -u origin main

Write-Host "`nDONE! Stray root photos are wiped and v25 is live on GitHub Pages in ~60 seconds." -ForegroundColor Green
