#!/usr/bin/env bash
# Start the concept-book FastAPI backend.
# Must be run inside the spl123 conda env (so spl3 is on PATH).
#
# One-time setup:
#   conda activate spl123
#   pip install -r requirements-api.txt
#
# Then start:
#   conda activate spl123
#   bash scripts/start-api.sh
set -euo pipefail
REPO="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO"
API_PORT="$(grep -m1 '^API_PORT=' "$REPO/.env" 2>/dev/null | cut -d= -f2 || true)"
API_PORT="${API_PORT:-8207}"

if ! command -v spl3 >/dev/null 2>&1; then
    for envdir in "$HOME/anaconda3/envs/spl123/bin" "$HOME/miniconda3/envs/spl123/bin"; do
        if [ -x "$envdir/spl3" ]; then
            export PATH="$envdir:$PATH"
            break
        fi
    done
fi
if ! command -v spl3 >/dev/null 2>&1; then
    echo "ERROR: spl3 not found on PATH. Run 'conda activate spl123' first (and verify with 'which spl3')." >&2
    exit 1
fi

uvicorn api.app:app --host 0.0.0.0 --port "$API_PORT" --reload
