" https://dougblack.io/words/a-good-vimrc.html
set number " enable line numbers
syntax enable " enable syntax highlighting
filetype plugin indent on  " enables loading of language-specific indentation files
" colorscheme industry " better colorscheme
set tabstop=2 " each tab is 2 spaces
set autoindent " enable autoindentation
set expandtab " turn tabs into spaces
set softtabstop=2 " each removal of a tab removes 2 spaces
set cursorline " show the line the cursor is on
set showcmd " show the last command entered in bottom right
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set foldenable " enable code folding
set foldnestmax=10 " show most code folds on open
nnoremap <space> za " remap space to handle code folding
set foldmethod=indent " fold based on indentation level

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark' " change solarized airline theme to dark version

" https://vi.stackexchange.com/questions/3359/how-do-i-fix-the-status-bar-symbols-in-the-airline-plugin
" airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" set NERTTreeToggle to F6
nmap <F6> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()
