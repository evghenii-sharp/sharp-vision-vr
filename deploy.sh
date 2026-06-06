#!/usr/bin/env bash
# Deploy the MVP to Netlify (sharpvr.netlify.app).
# Requires NETLIFY_AUTH_TOKEN in the environment.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p dist
cp sharp-vision-vr-mvp.html dist/index.html
cp LOGO.mp4 dist/LOGO.mp4
netlify deploy --prod --dir=dist
