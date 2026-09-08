#!/usr/bin/env bash
# Fail when version fields drift across manifests.
set -euo pipefail
cd "$(dirname "$0")/.."
v1=$(python3 -c "import json;print(json.load(open('.claude-plugin/plugin.json'))['version'])")
v2=$(python3 -c "import json;print(json.load(open('.claude-plugin/marketplace.json'))['plugins'][0]['version'])")
v3=$(python3 -c "import json;print(json.load(open('gemini-extension.json'))['version'])")
if [ "$v1" != "$v2" ] || [ "$v1" != "$v3" ]; then
  echo "version mismatch: plugin=$v1 marketplace=$v2 gemini=$v3" >&2
  exit 1
fi
echo "versions in sync: $v1"
