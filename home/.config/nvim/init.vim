runtime! plugin/python_setup.vim

call plug#begin('~/.vim/plugged')

Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'scss.css'] }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'rhysd/clever-f.vim'
Plug 'scrooloose/syntastic'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/matchit.zip'

call plug#end()

filetype plugin indent on
filetype plugin on

" Allow switching buffers without saving current buffer
set hidden

" Syntax
syntax on
" Turn off syntax for long lines to improve performance
set synmaxcol=320

" Colors
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Normal guibg=none
highlight NonText guibg=none

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

" Default folds are no fun
set nofoldenable

" Delete comment character when joining commented lines
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j
endif


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

""""""""""""""""""
" Remapping keys "
""""""""""""""""""

let mapleader = " "

" Leave terminal mode with escape
tnoremap <Esc> <C-\><C-n>

" Easier : commands!
nnoremap ; :
vnoremap ; :
nnoremap q; q:

" Have Y behave like D, C, etc (until end of line, not entire line)
nnoremap Y y$

" Turn off paste on leaving insert mode
" (only useful on machines with -clipboard where you have to use 'set paste')
au InsertLeave * set nopaste

" Nicer split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-left> <C-w>h
nnoremap <C-down> <C-w>j
nnoremap <C-up> <C-w>k
nnoremap <C-right> <C-w>l

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Go away ex mode, you suck
nnoremap Q <Nop>

" Let's not accidentally open help all the time
inoremap <F1> <Nop>

" Generate ctags
nnoremap <leader>ct :! ctags -R .<cr>

" ctrt t opens a new tab
nnoremap <Tab> :tabnext<CR>

" tab cycles tabs
nnoremap <C-t> :tabnew<CR>

"""""""""""""""""""
"  plugin: ctrlp  "
"""""""""""""""""""

" Search MRU, buffers, and files
nnoremap <C-o> :CtrlPMixed<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|_site|node_modules|_build|elm-stuff|coverage|deps|tmp)$',
  \ }


"""""""""""""""""""""""
"  plugin: Ultisnips  "
"""""""""""""""""""""""

let g:snips_author="Emily Woods"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"""""""""""""""""""""""
"  plugin: syntastic  "
"""""""""""""""""""""""
" On by default, except for html
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['html'] }

" error highlighting
let g:syntastic_enable_highlighting = 1

let g:syntastic_enable_signs = 0

" Have the error list automatically close
let g:syntastic_auto_loc_list = 1

let g:syntastic_check_on_wq = 0

" let g:syntastic_ruby_checkers=['mri', 'rubocop']
let g:syntastic_ruby_checkers=['mri']

