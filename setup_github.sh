#!/bin/bash
# One-command setup: run this AFTER `gh auth login`
# Usage: ./setup_github.sh [github-username] [public|private]
set -e
cd "$(dirname "$0")"

USER="${1:-YOUR-USERNAME}"
VIS="${2:-public}"

if [ "$USER" = "YOUR-USERNAME" ]; then
  echo "Usage: ./setup_github.sh <github-username> [public|private]"
  echo "Example: ./setup_github.sh vallimuthuraja public"
  exit 1
fi

echo "-> Replacing YOUR-USERNAME with $USER ..."
grep -rl "YOUR-USERNAME" README.md index.html hello.html | xargs sed -i "s/YOUR-USERNAME/$USER/g"

echo "-> Init git ..."
[ -d .git ] || git init -b main
git add -A
git commit -m "🦀 My Rust Journey Begins — Rust 101 + Hello World + Pages site" || echo "(nothing new to commit)"

echo "-> Creating GitHub repo $USER/rust-101 ($VIS) ..."
gh repo create "$USER/rust-101" --"$VIS" --source=. --remote=origin --push 2>&1 || {
  echo "Repo may already exist — pushing to origin main ..."
  git branch -M main
  git remote remove origin 2>/dev/null || true
  git remote add origin "https://github.com/$USER/rust-101.git"
  git push -u origin main
}

echo "-> Enabling GitHub Pages (main / root) ..."
gh api -X POST "repos/$USER/rust-101/pages" -f 'build_type="legacy"' -f source='{"branch":"main","path":"/"}' 2>&1 \
  || gh api -X PUT "repos/$USER/rust-101/pages" -f 'build_type="legacy"' -f source='{"branch":"main","path":"/"}' 2>&1 \
  || echo "(enable Pages manually: repo Settings > Pages > Deploy from branch: main / root)"

echo ""
echo "DONE!"
echo "Repo : https://github.com/$USER/rust-101"
echo "Site : https://$USER.github.io/rust-101/"
echo "Hello: https://$USER.github.io/rust-101/hello.html"
