let g:floaterm_wintype = 'float'
let g:floaterm_position = 'bottomright'
let g:floaterm_title = '$1/$2'
let g:floaterm_width = 0.6
let g:floaterm_height = 0.4
hi FloatermNC guibg=gray
let g:floaterm_keymap_toggle = '``'
" nnoremap <F1> :FloatermToggle --height=0.6 --width=0.4 --wintype=float --name=floaterm1 --position=bottomright<CR> 
" nnoremap   <silent>   <F11> :FloatermToggle<CR>
" tnoremap   <silent>   <F11>     <C-\><C-n>:FloatermToggle<CR>
tnoremap   <silent>   <C-h>      <C-\><C-n><C-W><LEFT>
" tnoremap   <silent>   <C-k>      <C-\><C-n><C-W><LEFT>
" tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermNew<CR>
" tnoremap   <silent>   <F36> <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>
" nnoremap   <silent>   <F11>   :FloatermNext<CR>
" tnoremap   <silent>   <F11>   <C-\><C-n>:FloatermNext<CR>
" nnoremap   <silent>   <F11><F11>   :FloatermPrev<CR>
" tnoremap   <silent>   <F11><F11>   <C-\><C-n>:FloatermPrev<CR>
