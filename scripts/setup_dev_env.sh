#!/usr/bin/env bash
set -euo pipefail
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -e ".[dev]"
cp -n .env.example .env || true
echo "Dev environment ready. Activate with: source .venv/bin/activate"
