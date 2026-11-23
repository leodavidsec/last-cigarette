#!/usr/bin/env bash
# Build the upload archives in dist/:
#   last-cigarette.zip          the skill folder at the root of the zip (Claude)
#   last-cigarette-chatgpt.zip  SKILL.md and its folders directly at the root of the zip (ChatGPT)
set -eu
cd "$(dirname "$0")/.."
python3 - <<'PY'
import os, zipfile
items = ["SKILL.md", "LICENSE", "agents", "references", "templates"]
def build(out, prefix):
    with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
        for item in items:
            if os.path.isdir(item):
                for root, dirs, files in os.walk(item):
                    dirs.sort()
                    for name in sorted(files):
                        path = os.path.join(root, name)
                        z.write(path, prefix + path.replace(os.sep, "/"))
            else:
                z.write(item, prefix + item)
        count = len(z.namelist())
    print(f"wrote {out} ({count} files)")
build("dist/last-cigarette.zip", "last-cigarette/")
build("dist/last-cigarette-chatgpt.zip", "")
PY
