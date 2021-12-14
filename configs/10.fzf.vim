let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
noremap <leader>o :Files!<Cr>
nnoremap <leader>c :Commands<Cr>
nnoremap <leader>ho :History<Cr>
nnoremap <leader>f :History<Cr>
nnoremap <leader>hc :History:<Cr>
nnoremap <leader>hs :History/<Cr>
nnoremap <leader>rg :Rg! 
nnoremap <leader>b :Buffers<Cr>
nnoremap gbl :BCommits!<Cr>
nnoremap gl :Commits!<Cr>
nnoremap <leader>w :Window<Cr>
inoremap <C-f> <Esc><Esc>:BLines!<Cr>
noremap <C-f> <Esc><Esc>:BLines!<Cr>
inoremap <F14> <Esc><Esc>:BLines!<Cr>
noremap <F14> <Esc><Esc>:BLines!<Cr>
