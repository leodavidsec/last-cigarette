#!/usr/bin/env bash
# Build dist/last-cigarette.zip: the skill folder only, for upload to assistants that accept a zip.
set -eu
cd "$(dirname "$0")/.."
python3 - <<'PY'
import os, zipfile
out = "dist/last-cigarette.zip"
items = ["SKILL.md", "LICENSE", "agents", "references", "templates"]
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    for item in items:
        if os.path.isdir(item):
            for root, dirs, files in os.walk(item):
                dirs.sort()
                for name in sorted(files):
                    path = os.path.join(root, name)
                    z.write(path, "last-cigarette/" + path.replace(os.sep, "/"))
        else:
            z.write(item, "last-cigarette/" + item)
    count = len(z.namelist())
print(f"wrote {out} ({count} files)")
PY
