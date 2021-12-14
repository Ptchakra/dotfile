call plug#begin('~/.config/nvim/bundle')
Plug 'asvetliakov/vim-easymotion'
Plug 'unblevable/quick-scope'
Plug 'machakann/vim-highlightedyank'
call plug#end()

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s2)

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=80
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline


let g:highlightedyank_highlight_duration = -1

function! s:vscodeCommentary(...) abort
    if !a:0
        let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
        return 'g@'
    elseif a:0 > 1
        let [line1, line2] = [a:1, a:2]
    else
        let [line1, line2] = [line("'["), line("']")]
    endif

    call VSCodeCallRange("editor.action.commentLine", line1, line2, 0)
endfunction
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

function! s:openWhichKeyInVisualMode()
    normal! gv
    let visualmode = visualmode()
    if visualmode == "V"
        let startLine = line("v")
        let endLine = line(".")
        call VSCodeNotifyRange("whichkey.show", startLine, endLine, 1)
    else
        let startPos = getpos("v")
        let endPos = getpos(".")
        call VSCodeNotifyRangePos("whichkey.show", startPos[1], endPos[1], startPos[2], endPos[2], 1)
    endif
endfunction
nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :<C-u>call <SID>openWhichKeyInVisualMode()<CR>

" Better Navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

" Switch tab
nnoremap <silent> H :call VSCodeNotify('workbench.action.previousEditor')<CR>
xnoremap <silent> H :call VSCodeNotify('workbench.action.previousEditor')<CR>
nnoremap <silent> L :call VSCodeNotify('workbench.action.nextEditor')<CR>
xnoremap <silent> L :call VSCodeNotify('workbench.action.nextEditor')<CR>

" Simulate same TAB behavior in VSCode
nmap <Tab> :Tabnext<CR>
nmap <S-Tab> :Tabprev<CR>

" Quit
nnoremap <silent> qq :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

" Open terminal
nnoremap <silent> `` :call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>

" Fold
nnoremap <silent> za :call VSCodeNotify('editor.toggleFold')<CR>
nnoremap <silent> zM :call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zR :call VSCodeNotify('editor.unfoldAll')<CR>
