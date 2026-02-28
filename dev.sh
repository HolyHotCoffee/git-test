#!/usr/bin/env bash
set -euo pipefail

python3 -m venv .venv
source .venv/bin/activate

python -m pip install -U pip
python -m pip install ruff pytest

python -m ruff check .
python -m ruff format .
python -m pytest -q
