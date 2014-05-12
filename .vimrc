set nocompatible
set noswapfile
call pathogen#infect()

set smartindent
set autoindent

set incsearch
set hlsearch
set smartcase
set showmatch

set showcmd
set ruler
set number
set relativenumber
set encoding=utf8

set list
set listchars=tab:▸\ ,eol:¬

set clipboard=unnamed

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
    autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
    autocmd FileType markdown onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
  augroup END

endif

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

colorscheme default

" russian keymap
set keymap=russian-jcuken
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>
inoremap <esc> <nop>

iabbrev funciton function

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": 0}
