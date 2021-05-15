"""""""""""""""""""""
" plugin: NERDTree  "
"""""""""""""""""""""

"Open NerdTree
map <C-w> :NERDTreeToggle<CR>

"""""""""""""""""""""
" plugin: RipGrep   "
"""""""""""""""""""""

"RipGrep
if executable('rg')
    let g:rg_derive_root='true'
endif

"""""""""""""""""""""
" plugin: fzf       "
"""""""""""""""""""""

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

"fzf and ripgrep bindings

nnoremap <C-p> :Files<CR>
nnoremap <C-o> :Buffers<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :Rg

"""""""""""""""""""""""
"  plugin: vim-vsnip  "
"""""""""""""""""""""""

let g:vsnip_snippet_dir = expand('~/.config/vsnip/')

"""""""""""""""""""""""""""
"  plugin: vim-terraform  "
"""""""""""""""""""""""""""
let g:terraform_fmt_on_save=1
let g:terraform_align=1

"""""""""""""""""""""""""""
"  plugin: Ale            "
"""""""""""""""""""""""""""
"Linting for Clojure with Ale
" clj-kondo should be installed on operating system path
let g:ale_linters = {'clojure': ['clj-kondo'], 'sh': ['shellcheck']}
