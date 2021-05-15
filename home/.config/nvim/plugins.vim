call plug#begin('~/.vim/plugged')


Plug 'lpil/gleam.vim'                                             " Gleam syntax highlighting
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }             " Terraform syntax highlighting
Plug 'vmchale/dhall-vim'                                          " Dhall syntax highlighting
Plug 'rykka/riv.vim'                                              " reStructuredText support
Plug 'sheerun/vim-polyglot'                                       " Language packs for syntax highlighting
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy finder
Plug 'junegunn/fzf.vim'                                           " Fzf vim plugin

Plug 'hrsh7th/vim-vsnip'                                          " Snippet support
Plug 'rafamadriz/friendly-snippets'                               " Snippets for different languages
Plug 'tpope/vim-commentary'                                       " Easy commenting
Plug 'tpope/vim-eunuch'                                           " Unix shell commands
Plug 'tpope/vim-fugitive'                                         " Vim Git Support
Plug 'tpope/vim-surround'                                         " Mappings to update surroundings e.g. parentheses in pairs
Plug 'tpope/vim-dispatch'                                         " Asynchronous building and testing
Plug 'radenling/vim-dispatch-neovim'                              " Neovim support for vim-dispaPlug 'rafamadriz/friendly-snippets'" Python code folding
Plug 'scrooloose/nerdtree'                                        " File system explorer
Plug 'sbdchd/neoformat'                                           " Formatting code for various languages
Plug 'godlygeek/tabular'                                          " Text alignment
Plug 'mbbill/undotree', {'branch': 'master'}                      " Multi-level undo support
Plug 'itchyny/lightline.vim'                                      " A configurable status line
Plug 'mg979/vim-visual-multi', {'branch': 'master'}               " Multiple cursors
Plug 'dense-analysis/ale'                                         " Syntax checking
Plug 'Olical/conjure', {'tag': 'v4.3.1'}                          " Code evaluation for Lisps
Plug 'clojure-vim/vim-jack-in'                                    " Use Lein, CLj or Boot (depends on vim-dispatch)
Plug 'vim-test/vim-test'                                          " Vim test runner
                                                                  " Only in Neovim:

call plug#end()
