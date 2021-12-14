let g:gitgutter_enabled = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_allow_clobber = 1
"let g:gitgutter_set_sign_backgrounds = 1
highlight link GitGutterAddIntraLine DiffAdd
" let g:gitgutter_highlight_lines = 1

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
