call plug#begin('~/.vim/plugged-raw')
Plug 'airblade/vim-gitgutter'
"Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-repeat'
Plug 'luochen1990/rainbow'
Plug 'guns/vim-clojure-static'
"Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'guns/vim-sexp'
Plug 'vim-airline/vim-airline'

Plug 'kotarak/vimpire'

"Plug '~/prog/vim-repl'
call plug#end()

set nocompatible
set noswapfile

"let g:pathogen_disabled = ['ensime-vim']
"call pathogen#infect()

set smartindent
set autoindent

set incsearch hlsearch smartcase showmatch ignorecase

set showcmd
set ruler
set number
set relativenumber
set encoding=utf8

set autoread

set list
set listchars=tab:▸\ ,eol:¬

set clipboard=unnamed

" faster macro
" set lazyredraw 

syntax on
:filetype plugin on
:filetype plugin indent on


set ts=2 sts=2 sw=2 expandtab
if has("autocmd")
  filetype on
  augroup filytype
    autocmd!
    autocmd BufNewFile,BufRead *.jst set filetype=javascript
    autocmd BufNewFile,BufRead *.md set filetype=markdown
    autocmd BufNewFile,BufRead *.cl set filetype=c
    autocmd BufNewFile,BufRead *.lfe set filetype=lisp
    autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType cpp setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
    autocmd FileType markdown onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
  augroup END

endif

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

let &t_Co=256
"colorscheme default

" russian keymap
"set keymap=russian-jcuken
"set iminsert=0
"set imsearch=0
"highlight lCursor guifg=NONE guibg=Cyan

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev funciton function

"let g:slime_target = "tmux"
"let g:slime_default_config = {"socket_name": "default", "target_pane": 0}

"let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
"nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>

let g:rainbow_active = 1


"nnoremap <Plug>(lol_test) :echo "lol test"<CR>
"nmap <C-l> <Plug>(lol_test)

nmap <C-l> <Plug>(vimpire_eval)
nmap <leader>d <Plug>(vimpire_doc_lookup_word)
nmap <C-x> <Plug>(vimpire_close_result_buffer)
