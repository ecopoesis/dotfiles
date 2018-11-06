if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree',
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'ryanoasis/vim-devicons'
Plug 'dansomething/vim-hackernews'
call plug#end()

set nohls
set ic
set is
set autowrite
set clipboard=unnamed
set number
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set encoding=UTF-8

let &t_ut=''

syntax on

filetype indent on
filetype plugin on

au BufRead,BufNewFile *.java set filetype=java

autocmd BufEnter *.html setlocal indentexpr=
autocmd BufEnter *.htm setlocal indentexpr=
autocmd BufEnter *.xml setlocal indentexpr=
autocmd BufEnter *.xsd setlocal indentexpr= 
autocmd BufEnter *.php setlocal indentexpr= 

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

hi CursorLine ctermbg=239  cterm=none "Allows for highlighting in the terminal

set t_Co=256
colorscheme darcula
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

" copy visual selection automatically
set clipboard+=autoselect
set guioptions+=a

" NerdTree
map <C-t> :NERDTreeToggle<CR>

" UndoTree
map <C-u> :UndotreeToggle<CR>

" airline
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1
