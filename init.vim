if !exists('g:vscode')
    " nvim
    for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
        exe 'source' f
    endfor
else
    " vscode extensions
    exe 'source' '~/.config/nvim/vscode.vim'
endif
