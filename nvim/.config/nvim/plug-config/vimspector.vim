sign define vimspectorBP            text=●   texthl=WarningMsg
sign define vimspectorBPCond        text=◆   texthl=WarningMsg
sign define vimspectorBPLog         text=◆   texthl=SpellRare
sign define vimspectorBPDisabled    text=●   texthl=LineNr
sign define vimspectorPC            text=▶   texthl=MatchParen linehl=CursorLine
sign define vimspectorPCBP          text=●▶  texthl=MatchParen linehl=CursorLine
sign define vimspectorCurrentThread text=▶   texthl=MatchParen linehl=CursorLine
sign define vimspectorCurrentFrame  text=▶   texthl=Special    linehl=CursorLine

let g:vimspector_sign_priority = {
  \    'vimspectorBP':         103,
  \    'vimspectorBPCond':     102,
  \    'vimspectorBPLog':      102,
  \    'vimspectorBPDisabled': 101,
  \    'vimspectorPC':         999,
  \ }
