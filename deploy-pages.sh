#!/usr/bin/env bash
# Publish to GitHub Pages: copy the source to index.html, commit, push.
# Pages rebuilds automatically (~1 min). Live at:
#   https://evghenii-sharp.github.io/sharp-vision-vr/
set -euo pipefail
cd "$(dirname "$0")"
cp sharp-vision-vr-mvp.html index.html
git add -A
git commit -q -m "${1:-Update Sharp Vision VR}

Co-Authored-By: Claude Opus 4.8 (1M context) <noreply@anthropic.com>" || { echo "nothing to commit"; exit 0; }
git push -q origin main
echo "Pushed. Pages will rebuild → https://evghenii-sharp.github.io/sharp-vision-vr/"
