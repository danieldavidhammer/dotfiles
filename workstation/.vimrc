set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'gmarik/Vundle.vim'

	" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
	Plugin 'tmhedberg/SimpylFold'
	Bundle 'Valloric/YouCompleteMe'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'nvie/vim-flake8'
	Plugin 'scrooloose/nerdtree'
	Plugin 'tpope/vim-fugitive'
	Plugin 'dracula/vim'
	Plugin 'airblade/vim-gitgutter'
	Plugin 'jreybert/vimagit'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	
	" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

set encoding=utf-8

" YouCompleteMe custom
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Highlighting
let python_highlight_all=1
syntax on

" Toggle between light/dark
"call togglebg#map("<F5>")

" Sets relative numbering of lines 
set relativenumber

" Clipboard
set clipboard=unnamed

colorscheme Tomorrow-Night-Bright
"colorscheme delek 

" Disable arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" vim-latex config
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" airline smart tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" enable airline theme
let g:airline_theme = 'simple'

" powerline symbols for airline
"if !exists('g:airline_symbols')
"let g:airline_symbols = {}
"endif
":let g:Powerline_symbols='unicode'
let g:airline_powerline_fonts = 1
"let g:airline_symbols.linenr = '¶' 
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ','linenr', ':%3v'])
set linespace=0
hi Normal ctermbg=NONE
