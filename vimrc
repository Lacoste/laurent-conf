" Ressources
" http://nvie.com/posts/how-i-boosted-my-vim/

"
" general setup
"

filetype off
set nocompatible
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set modelines=0

let mapleader=","

nmap <silent> <leader>ve :e $MYVIMRC<CR>
nmap <silent> <leader>vr :so $MYVIMRC<CR>

"
" behavior
"

" wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=81
hi ColorColumn ctermbg=0
set winwidth=80

"set hidden

"set tabstop=2
"set shiftwidth=2
"set smarttab
"set softtabstop=2
"
set tabstop=4     " a tab is four spaces
set expandtab
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
" set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
" set noswapfile

"
" file type
"

filetype plugin indent on
if has('autocmd')
  autocmd filetype python set expandtab
endif

"
" color
"

"if &t_Co >= 256 || has("gui_running")
"  colorscheme mustang
"endif

if &t_Co > 2 || has("gui_running")
  " switch syntax highlighting on, when the terminal has colors
  syntax on
endif

"
" editing
"

"set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.
" set listchars=trail:.,extends:#,nbsp:.
" set listchars-=tab:>.
"autocmd filetype html,xml set listchars-=tab:>.

"
" paste
"

set pastetoggle=<F2>
map <C-v> "+p
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+p
"nmap <F6> :!read xsel --clipboard --output<CR>

"
" mouse
"

"set mouse=a
"XXX install vim x11
"set ttymouse=xterm2 "to work inside tmux
"noremap <F3> :call <SID>ToggleMouse()<CR>
"inoremap <F3> <Esc>:call <SID>ToggleMouse()<CR>a

"
" bindings
"

nnoremap ; :
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Jump to next line in editor, not in file
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Clear search
nmap <silent> ,/ :nohlsearch<CR>

" Reopen file with sudo
cmap w!! w !sudo tee % >/dev/null

" Search with ack
nnoremap <leader>a :Ack 

nnoremap <leader>P :ToggleRaibowParenthesis

"
" Plugins
"

" * Command-t - ,t
" * snipMate - for<TAB>

"
" Autosave on focus out
"
au FocusLost * :wa

" ----
" MINE
" ----

" set hlsearch
set guifont="Monospace 9"

" version using tabs
"set tabstop=4
"set shiftwidth=4
"set smarttab
"set expandtab
"set softtabstop=4
"set autoindent
"im :<CR> :<CR><TAB>

" version using spaces
"set tabstop=2
"set shiftwidth=2
"set smarttab
"set expandtab
"set softtabstop=2
"set autoindent
"im :<CR> :<CR><TAB>

" filetype plugin indent on

imap <F4> ===============================================================================<CR>
nmap <F4> a===============================================================================<CR>
imap <F5> ===============================================================================<CR><C-R>=strftime("%Y%m%d-%H%M")<CR><CR>
nmap <F5> a===============================================================================<CR><C-R>=strftime("%Y%m%d-%H%M")<CR><CR>

