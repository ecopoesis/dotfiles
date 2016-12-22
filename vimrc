set nohls
set ic
set is
set autowrite
set clipboard=unnamed
set number
set tabstop=4
set shiftwidth=4
set expandtab

syntax on

filetype indent on
filetype plugin on

"au BufRead,BufNewFile * set filetype=php
au BufRead,BufNewFile *.tpt set filetype=php
au BufRead,BufNewFile *.java set filetype=java

autocmd BufEnter *.html setlocal indentexpr=
autocmd BufEnter *.htm setlocal indentexpr=
autocmd BufEnter *.xml setlocal indentexpr=
autocmd BufEnter *.xsd setlocal indentexpr= 
autocmd BufEnter *.php setlocal indentexpr= 

hi CursorLine ctermbg=239  cterm=none "Allows for highlighting in the terminal

set t_Co=256
colorscheme twilight 
highlight clear SignColumn
highlight LineNr ctermfg=grey

" zz centers the screen
nmap n nzz
nmap N Nzz
nmap k gk
nmap j gj

hi def link gitcommitSummary Normal 
hi def link gitcommitBlank Normal 

" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
