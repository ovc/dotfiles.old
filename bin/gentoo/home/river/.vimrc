set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" Folding save and restore
" set fdm=manual
set foldmethod=manual
autocmd BufWinLeave * if expand("%") != "" | mkview | endif
autocmd BufWinEnter * if expand("%") != "" | loadview | endif

" Working with system buffer
set clipboard=unnamedplus
syntax on
