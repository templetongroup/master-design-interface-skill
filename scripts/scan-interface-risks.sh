#!/usr/bin/env bash
set -euo pipefail

scan_root="${1:-.}"

if ! command -v rg >/dev/null 2>&1; then
  echo "scan-interface-risks: rg is required" >&2
  exit 2
fi

if [[ ! -d "$scan_root" ]]; then
  echo "scan-interface-risks: not a directory: $scan_root" >&2
  exit 2
fi

echo "Interface risk candidates only; confirm every result in source and runtime."

scan() {
  local label="$1"
  local pattern="$2"
  echo
  echo "[$label]"
  rg -n -i --hidden \
    --glob '!**/.git/**' \
    --glob '!**/node_modules/**' \
    --glob '!**/.build/**' \
    --glob '!**/dist/**' \
    --glob '!**/build/**' \
    --glob '!**/Vendor/**' \
    --glob '!**/vendor/**' \
    --glob '!**/DerivedData/**' \
    --glob '!**/*.{min.js,min.css,map}' \
    --glob '*.{css,scss,sass,less,html,js,jsx,ts,tsx,vue,svelte,swift,kt,kts,java,xml,json,yaml,yml}' \
    "$pattern" "$scan_root" | head -n 80 || true
}

scan "focus suppression" 'outline\s*:\s*(none|0)|focusRingType\s*=\s*\.none|focus:outline-none'
scan "broad or perpetual motion" 'transition\s*:\s*all|animation[^;\n]*infinite|repeatForever\s*\('
scan "fragile viewport or text geometry" 'height\s*:\s*100vh|width\s*:\s*[0-9]{4,}px|min-width\s*:\s*[0-9]{4,}px|frame\s*\([^\n]*(width|height)\s*:\s*[0-9]{3,}'
scan "extreme stacking" 'z-index\s*:\s*[0-9]{3,}|zIndex\s*[:=]\s*[0-9]{3,}'
scan "placeholder or synthetic content" 'lorem ipsum|john doe|jane doe|acme corp|insert text here|TODO[: ]+copy'
scan "generic AI language" '\b(elevate|unleash|next-gen|game-?changer|seamless experience|delve into|revolutionize)\b'
scan "hard-coded readiness or permission copy" '(microphone|accessibility|camera|model|permission)[^\n]{0,80}(allowed|ready|connected|granted)'
scan "destructive actions to inspect" '\b(delete|remove|clear all|clear history|erase|reset|forget)\b'
scan "very small type candidates" 'font-size\s*:\s*(?:[0-9](?:\.[0-9]+)?|1[01](?:\.[0-9]+)?)px\b|(^|[^[:alnum:]_-])size\s*:\s*(?:[0-9](?:\.[0-9]+)?|1[01](?:\.[0-9]+)?)([^0-9.]|$)'
scan "pure black or white candidates" '#(?:000000|000|ffffff|fff)\b|rgb\(\s*(?:0\s*,\s*0\s*,\s*0|255\s*,\s*255\s*,\s*255)\s*\)'

echo
echo "End of candidate scan. Visual, accessibility, and interaction verification is still required."
