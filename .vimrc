"""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""

" load plugins from vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" utilities
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'christoomey/vim-system-copy'
Plugin 'christoomey/vim-sort-motion' 
Plugin 'tpope/vim-surround'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" colorschemes
Plugin 'wei170/badwolf'

" Goyo
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

" nerdcommenter
Plugin 'scrooloose/nerdcommenter'
" JavaScript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

" EditorConfig
Plugin 'wei170/editorconfig-vim'

" powerline-font
Plugin 'wei170/fonts'

"" Powerline 
"Plugin 'wei170/powerline'
"
"" Airline => AWESOME!!!
"Plugin 'bling/vim-airline'
"
"" powerline-shell
"Plugin 'wei170/powerline-shell'
"
" Jellybeans
Plugin 'nanotech/jellybeans.vim'

" Textobj-entire
Plugin 'vim-scripts/textobj-entire'

" VIim-unimpaired
Plugin 'tpope/vim-unimpaired'

" You-complete-mw
" Plugin 'wei170/YouCompleteMe' 

" Vim-rails
Plugin 'tpope/vim-rails'

call vundle#end()
filetype plugin indent on

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','

" Tab control
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

set clipboard=unnamed

" faster redrawing
set ttyfast

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" switch syntax highlighting on
syntax on

set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
syntax enable
set background=dark
colorscheme badwolf

set number
set relativenumber 

set autoindent " automatically set indent of new line
set smartindent

set laststatus=2 " show the satus line all the time

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>ev :e! ~/.vimrc<cr> " edit ~/.vimrc

map <leader>wc :wincmd q<cr>

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrip_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$'
            \ }

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Guocheng's stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

"""""""""""""""""
" Studying
"""""""""""""""""
set wildmenu
set wildmode=full

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" To search in the current directory
set path=.

" Break the Habit of Reaching for the Arrow Keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Remap Line Motion Commands
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" Autoload the matchit plugin
set nocompatible
filetype plugin on
runtime macros/machit.vim

" Paste register 0:yank 1:cut

"  Sets up the (fn)<f5> to toggle the paste option on and off
set pastetoggle=<f5>

" Enable the 'hidden' Setting Before Running ':argdo' or ':bufdo'
" source ~/Desktop/Vim\ &\ Tmux\ &\ Webdesign/code/macros/rc.vim
set nocompatible
filetype plugin indent on
set hidden
if has("autocmd")
	  autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
endif

" Set smartcase => If have uppercase characters, then case sensitive
set smartcase

" Set hlsearch
set hlsearch

" Shortcut to Google
function OpenGoogle()
	exec "!open http://www.google.com"
endfunction

noremap <Leader>gg :call OpenGoogle()<CR>

" Cursorline
set cursorline

" Tag Color
let g:badwolf_tabline = 2

" Ruler
set colorcolumn=81
