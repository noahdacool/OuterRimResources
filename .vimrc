" Start with default configuration
source $VIMRUNTIME/vimrc_example.vim

" Enable syntax highlighting (critical for code readability)
syntax enable
set syntax=on

" Use 24-bit color (required for modern themes)
set termguicolors

" Show line numbers (relative numbers for easier jumps: 5j jumps 5 lines)
set number          " Show absolute line number for current line
set relativenumber  " Show relative numbers for other lines

" Enable mouse support (useful for scrolling, but keep keyboard-focused!)
set mouse=a

" Auto-indent new lines (matches indentation of the previous line)
set autoindent
set smartindent     " Smarter indentation for code (e.g., after {)
set expandtab       " Use spaces instead of tabs
set tabstop=4       " Number of spaces a <Tab> counts for
set shiftwidth=4    " Number of spaces for autoindent (match tabstop)
set softtabstop=4   " Number of spaces for <BS> to delete

" Wrap lines at window edges (disable for code to avoid line breaks)
set wrap
set linebreak       " Wrap at word boundaries

" Highlight search results and enable incremental search
set hlsearch
set incsearch       " Show matches as you type

" Ignore case in search (but respect case if search has uppercase)
set ignorecase
set smartcase

" Keep cursor x lines away from top/bottom when scrolling
set scrolloff=10

" Show status line (even in single window)
set laststatus=2

" Enable undo/redo across sessions (persistent undo)
set undofile
set undodir=~/.vim/_undo//  " Store undo files here (create dir first: mkdir -p ~/.vim/_undo)

" Enable backup files
set backup
set backupdir=~/.vim/_backup//  " Store backup files here (create dir first: mkdir -p ~/.vim/_backup)

" Show invisible characters (spaces, tabs, line endings)
"set list
"set listchars=tab:→\ ,space:·,eol:¬  " Customize symbols

" Enable configuration based on file type
filetype plugin on

" Navigate splits with Ctrl+[hjkl] (no more <C-w>h)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize splits with Ctrl+arrow keys
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" Autoclose brackets
inoremap {<CR> {<CR>}<ESC>ko

" Use nasm syntax highlighting for x86_64 (intel)
autocmd BufRead,BufNewFile *.asm setlocal syntax=nasm

" Change tab size to 2 in HTML and CSS files
autocmd FileType html,css setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Highlight trailing whitespace
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/

set nowrap
