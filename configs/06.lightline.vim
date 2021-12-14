let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }

let g:lightline.mode_map={
    \ 'n': 'N',
    \ 'i': 'I',
    \ 'R': 'R',
    \ 'v': 'V',
    \ 'V': 'VL',
    \ "\<C-v>": 'VB',
    \ 'c': 'C',
    \ 's': 'S',
    \ 'S': 'SL',
    \ "\<C-s>": 'SB',
    \ 't': 'T',
    \ }

let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be" }
let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0b9" }
let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba" }
let g:lightline.tabline_subseparator = { 'left': "\ue0bb", 'right': "\ue0bb" }
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf529"
let g:lightline#ale#indicator_errors = "\uf00d"
let g:lightline#ale#indicator_ok = "\uf00c"

" Off status insert for lightline
set noshowmode
" On tabline
set showtabline=2

" Autocommand to call whenever the colour scheme changes
augroup lightline-events
    autocmd!
    autocmd ColorScheme * call s:onColorSchemeChange(expand("<amatch>"))
augroup END

let s:colour_scheme_map = {'gruvbox':'seoul256', 'nord': 'nord', 'onedark': 'one'}

let g:scheme_sync_flag = 0

function! s:onColorSchemeChange(scheme)
    " Try a scheme provided already
    execute 'runtime autoload/lightline/colorscheme/'.a:scheme.'.vim'
    if exists('g:lightline#colorscheme#{a:scheme}#palette')
        let g:lightline.colorscheme = a:scheme
        if g:scheme_sync_flag > 0
            silent execute "!colorscheme ".a:scheme
        endif
        let g:scheme_sync_flag = 1
    else  " Try falling back to a known colour scheme
        let l:colors_name = get(s:colour_scheme_map, a:scheme, '')
        if empty(l:colors_name)
            return
        else
            let g:lightline.colorscheme = l:colors_name
            " call system("alacritty-colorscheme apply gruvbox.yaml")
        endif
    endif
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

call s:onColorSchemeChange(g:colors_name)


command! -nargs=0 ColorsSync :call system('alacritty-colorscheme apply '.g:colors_name.'.yaml')
