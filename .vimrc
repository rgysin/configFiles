colorscheme monokai
let mapleader="<esc>"
nnoremap ; :
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set colorcolumn=80
autocmd FileType make set noexpandtab
filetype plugin on
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0
autocmd BufWritePre * :%s/\s\+$//e
