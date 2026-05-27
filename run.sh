#!/bin/bash
set -e

PYTHON=$(command -v python3.13 || command -v python3 || echo "")

if [ -z "$PYTHON" ]; then
  echo "Error: Python 3 not found. See README for setup instructions."
  exit 1
fi

if ! "$PYTHON" -c "import tkinter" 2>/dev/null; then
  echo "Error: tkinter not available. Run: brew install python-tk@3.13"
  exit 1
fi

"$PYTHON" "$(dirname "$0")/src/piano.py"
