call plug#begin()
Plug 'rafi/awesome-vim-colorschemes' " Just some goofie color schemes
Plug 'vim-airline/vim-airline' " Bottom status bar
Plug 'preservim/nerdtree' " File browser
Plug 'ryanoasis/vim-devicons' " Adds icons to files
Plug 'tpope/vim-commentary' " Easily comment shit
Plug 'tpope/vim-surround' " You can basically surround everything using CS
Plug 'neoclide/coc.nvim' " Syntax
Plug 'rstacruz/vim-closer' " Autoclose brackets and what nots
Plug 'ryanoasis/vim-devicons' " Icons
call plug#end()
:colorscheme jellybeans 
set nocompatible
set showmatch
set ignorecase
set mouse=a
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set cc=80
set encoding=UTF-8
filetype plugin indent on
syntax on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set cursorline
set ttyfast
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCOllapsible="~"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" NerdTREE bindings
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Coc
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Custom splitting
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR> 
