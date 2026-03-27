#!/usr/bin/env bash
#
# Merge personal Claude Code preferences into ~/.claude/settings.json
#
# Preserves any existing keys (e.g. Bedrock env/modelOverrides set by IT)
# and overlays personal prefs on top. Arrays like permissions.allow are
# merged (concatenated + deduplicated), objects are deep-merged.
#
# Usage: ./apply-claude-prefs.sh
#

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
PREFS="$DIR/src/claude/settings.json"
TARGET="$HOME/.claude/settings.json"

if [ ! -f "$PREFS" ]; then
  echo "Error: $PREFS not found" >&2
  exit 1
fi

# Remove symlink if settings.json was previously symlinked
if [ -L "$TARGET" ]; then
  echo "Removing old symlink at $TARGET"
  rm "$TARGET"
fi

if [ ! -f "$TARGET" ]; then
  echo "No existing settings — copying prefs directly"
  mkdir -p "$(dirname "$TARGET")"
  cp "$PREFS" "$TARGET"
else
  # Deep merge: existing settings as base, personal prefs overlaid.
  # Uses jq's * operator for recursive merge (right side wins on conflict).
  # Arrays are concatenated and deduplicated.
  if ! command -v jq &>/dev/null; then
    echo "Error: jq is required. Install with: brew install jq" >&2
    exit 1
  fi

  MERGED=$(jq -s '
    def merge_arrays: group_by(.) | map(.[0]);
    .[0] as $base | .[1] as $overlay |
    ($base * $overlay) |
    # Concatenate and dedup permissions.allow arrays
    if ($base.permissions.allow // []) != [] and ($overlay.permissions.allow // []) != [] then
      .permissions.allow = (($base.permissions.allow // []) + ($overlay.permissions.allow // []) | merge_arrays)
    else . end
  ' "$TARGET" "$PREFS")

  echo "$MERGED" | jq '.' > "$TARGET"
fi

echo "Updated $TARGET"
jq '.' "$TARGET"
