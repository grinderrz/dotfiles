set nocompatible

set smartindent
set autoindent

set incsearch
set hlsearch
set showmatch
set showcmd
set ruler
set number
syntax on

set list
set listchars=tab:▸\ ,eol:¬

:filetype plugin on
:filetype plugin indent on


set ts=2 sts=2 sw=2 expandtab
if has("autocmd")
  filetype on

  autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType php setlocal ts=4 sts=4 sw=4 noexpandtab

endif
