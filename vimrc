set nohls
set ic
set is
set autowrite
"set mouse=nv
set clipboard=unnamed

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
colorscheme peaksea 

" zz centers the screen
nmap n nzz
nmap N Nzz

nmap k gk
nmap j gj

"nmap e 0mpww ywGO<Tab>public function get<Esc>pb   ~$a() {<Enter><Tab><Tab>return $this-><Esc>pa;<Enter><Tab>}<Enter><Enter><Tab>public function set<Esc>pb   ~$a($<Esc>pa) {<Enter><Tab><Tab>$this-><Esc>pa = $<Esc>pa;<Enter><Tab>}<Enter><Esc>'pj

"imap <C-c> <Esc>"+y o 	  				 	 	 	   	 	  	   		  	 
"imap <C-v> <Esc>"+gP o 	  				 	 	 	   	 	  	   		  	 
"vmap <C-c> "+y  	  				 	 	 	   	 	  	   		  	 
"vmap <C-v> "+gP 
