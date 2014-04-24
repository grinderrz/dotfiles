set nocompatible
set noswapfile
call pathogen#infect()

set smartindent
set autoindent

set incsearch
set hlsearch
set showmatch
set showcmd
set ruler
set number
set encoding=utf8

set list
set listchars=tab:▸\ ,eol:¬


syntax on
:filetype plugin on
:filetype plugin indent on


set ts=2 sts=2 sw=2 expandtab
if has("autocmd")
  filetype on

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

" run selected script in myslq which opened in 0 pane
" TODO
" - move to separate plugin
" - gen tmp filename random
" - remove tmp file after exec
" - make pane to exec as option
vmap <Leader>r :call Tmux_send()<CR>
function! Tmux_send() range
  normal gv"xy
  call writefile(split(@x, '\n'), '/tmp/vimselection')
  call system("tmux send-keys -l -t 0 'mysql -h dev-sql -uleotest -pmmN2vVZbuHrN2J2T --skip-column-names -s -e \"source /tmp/vimselection\" dictionary > syntransvotes.sql'")
  "call system("tmux send-keys -l -t 0 'source /tmp/vimselection'")
  call system("tmux send-keys -t 0 'Enter'")
endfunction
