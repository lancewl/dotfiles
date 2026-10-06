#!/bin/sh
# Usage: navigate.sh <left|down|up|right> <key>
# Forwards <key> to the focused pane when it runs (n)vim, otherwise moves herdr focus.
unset HERDR_PANE_ID HERDR_TAB_ID HERDR_WORKSPACE_ID
pane=$(herdr pane current | jq -r '.result.pane.pane_id')
if herdr pane process-info --pane "$pane" |
  jq -e '.result.process_info.foreground_processes[] | select(.name | test("^n?vim$"))' >/dev/null; then
  herdr pane send-keys "$pane" "$2"
else
  herdr pane focus --direction "$1" --pane "$pane"
fi
