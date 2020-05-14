call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-repeat'
Plug 'luochen1990/rainbow'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'guns/vim-sexp'
Plug 'vim-airline/vim-airline'
Plug 'jgdavey/tslime.vim'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'

Plug 'kotarak/vimpire'

"Plug '~/prog/vim-repl'
call plug#end()

"set runtimepath^=~/.vim/bundle/sample-plugin
"set runtimepath^=~/.vim/bundle/my-plugin

set noswapfile
set smartindent smartcase showmatch ignorecase
set number relativenumber
set termguicolors
set encoding=utf8
set clipboard=unnamed

if $ITERM_PROFILE == 'dark'
  set background=dark
endif
if $ITERM_PROFILE == 'light'
  set background=light
endif

let mapleader="\<SPACE>"

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc
" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

set list
set listchars=tab:▸\ ,eol:¬
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" russian keymap
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

let g:airline#extensions#keymap#enabled = 0
let g:rainbow_active = 1


" persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Vimpire
nmap <C-l> <Plug>(vimpire_eval)
nmap <leader>d <Plug>(vimpire_doc_lookup_word)
nmap <C-x> <Plug>(vimpire_close_result_buffer)

"set verbose=12
"set verbosefile=$HOME/vim.log

" sexp
let g:sexp_filetypes = 'clojure,scheme,lisp,timl,wood'


augroup filetype
  autocmd!
  autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType cpp setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType sql setlocal ts=4 sts=4 sw=4 expandtab
  autocmd BufNewFile,BufRead *.wood setlocal ts=2 sts=2 sw=2 expandtab filetype=wood
  autocmd BufNewFile,BufRead *.morph setlocal ts=2 sts=2 sw=2 expandtab filetype=wood
  autocmd BufNewFile,BufRead *.xml setlocal ts=4 sts=4 sw=4 expandtab
  autocmd BufNewFile,BufRead *.h setlocal ts=4 sts=4 sw=4 expandtab
  autocmd BufNewFile,BufRead *.s setlocal ts=4 sts=4 sw=4 expandtab
  autocmd BufNewFile,BufRead *.glsl setlocal ts=4 sts=4 sw=4 expandtab
augroup END

" tslime
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
vmap <localleader>t <Plug>SendSelectionToTmux
nmap <localleader>t <Plug>NormalModeSendToTmux
nmap <localleader>r <Plug>SetTmuxVars

" mac <M-.> mappings
nmap œ <M-q>
nmap ∑ <M-w>
nmap ´ <M-e>
nmap ∫ <M-b>
nmap ˙ <M-h>
nmap ∆ <M-j>
nmap ˚ <M-k>
nmap ¬ <M-l>
nmap Ó <M-S-h>
nmap Ô <M-S-j>
nmap  <M-S-k>
nmap Ò <M-S-l>

" fireplace
nmap ® <M-r>
nmap ‰ <M-S-r>
nmap <M-r> :w<CR>:Require<CR>
nmap <M-S-r> :w<CR>:Require!<CR>
