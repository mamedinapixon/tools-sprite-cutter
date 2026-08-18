#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

PORT="${PORT:-8080}"
URL="http://localhost:${PORT}/sprite-cutter.html"

echo "Serving Sprite Cutter at ${URL}"

if command -v xdg-open >/dev/null 2>&1; then
  ( sleep 1 && xdg-open "$URL" >/dev/null 2>&1 ) &
elif command -v open >/dev/null 2>&1; then
  ( sleep 1 && open "$URL" >/dev/null 2>&1 ) &
fi

exec python3 -m http.server "$PORT"
