#!/usr/bin/env bash
set -e

# optional: download models on first run
python - <<'PY'
from paddleocr import PaddleOCR
ocr = PaddleOCR(use_angle_cls=True, lang='en')  # initialisiert und lädt Modelle
print("PaddleOCR models ready")
PY

uvicorn app:app --host 0.0.0.0 --port 8000 --workers 1
