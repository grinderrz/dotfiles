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

  au BufNewFile,BufRead *.jst set filetype=javascript

  autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab

endif

"inoremap jk <ESC>
"set tags+=$HOME."/vimtags/tags"

"map <C-j> : call JavaScriptLint()<CR>
"func! JavaScriptLint()
"   exec “!jslint -process % “
"endfunc

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
