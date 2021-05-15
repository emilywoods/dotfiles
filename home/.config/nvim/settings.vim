filetype plugin indent on
filetype plugin on

" Allow switching buffers without saving current buffer
set hidden

" Syntax
syntax on

" Set it to scroll when cursor is # lines from top/bottom
set so=7

" Mouse support
set mouse=a

" Line numbers
set nu
highlight LineNr ctermfg=Brown
set ruler

" Improve backspace deletion behaviour
set backspace=indent,eol,start

" Disable search highlighting by default
set nohlsearch

" Smart case insensitive search
set ignorecase
set smartcase

" / searches before hitting enter
set incsearch

" Command line auto complete
set wildmenu

" Auto read external file changes
set autoread

" Colours
set t_Co=256

" don't redraw when performing macros (for performance)
set lazyredraw

" Disable default Vim folding
set nofoldenable

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Delete comment character when joining commented lines
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j
endif

"""""""""""""""""""""""""""""""""
" Colours                       "
"""""""""""""""""""""""""""""""""
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Normal guibg=none
highlight NonText guibg=none


"""""""""""""""""""""""""""""""""
" Indentation, Tabs, Space, Etc "
"""""""""""""""""""""""""""""""""

set wrap

set autoindent
set smartindent

set expandtab       "Always uses spaces instead of tabs
set nojoinspaces    "Don't convert spaces to tabs
set shiftround      "Round spaces to nearest shiftwidth multiple
set smarttab        "Indent instead of tab at start of line

set shiftwidth=2    "An indent is 2 spaces
set softtabstop=2   "Insert 2 spaces when tab is pressed
set tabstop=2       "A tab is 2 spaces

" Add indentation for certain files
au BufNewFile, BufRead *.html, *.css, *.js
    \  set tabstop=2
    \| set softtabstop=2
    \| set shiftwidth=2

" Flag unnecessary whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"""""""""""""""""""
" Persistent Undo "
"""""""""""""""""""
set undofile                    " Save undo's after file closes
set undodir=~/.config/nvim/undo " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo

""""""""""""""""
" Highlighting "
""""""""""""""""
" Highlight chars in col 80
2mat ErrorMsg '\%80v.'
    " clear with :2mat

" Highlight fenced code blocks in markdown docs
let g:markdown_fenced_languages = [
      \'clojure',
      \'css',
      \'elixir',
      \'erlang',
      \'haskell',
      \'html',
      \'javascript',
      \'js=javascript',
      \'json=javascript',
      \'python',
      \'ruby',
      \'sass',
      \'scheme',
      \'sh',
      \'xml'
      \]
