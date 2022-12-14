""""""""""""""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""""""""""""""
filetype plugin on
syntax on
set breakindent smartindent
set completeopt=menu,menuone,noselect,preview
set cpoptions+=y
set cursorcolumn cursorline
set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=expr foldminlines=5 nofoldenable
set ignorecase smartcase
set inccommand=nosplit
set laststatus=3
set lazyredraw
set path+=**
set rnu nu
set scrolloff=10
set shiftround
set signcolumn=yes
set spelllang=en
set splitbelow splitright
set suffixes+=*.class$
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
set termguicolors
set title
set visualbell
set wildmenu
set wildmode=longest,full
set wildoptions=pum,tagfile
set wrap

""""""""""""""""""""""""""""""""""""""""
" Basic autocmd
""""""""""""""""""""""""""""""""""""""""
" Disable auto-commenting on new-line
"au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically delete trailing white spaces on save
au BufWritePre * %s/\s\+$//e

" Custom file types
au BufRead,BufNewFile *.desktop,*.service set filetype=dosini
au BufRead,BufNewFile *.http,*.req set filetype=http
au BufRead,BufNewFile *.jq set filetype=jq
au BufRead,BufNewFile sxhkdrc set filetype=sxhkdrc

""""""""""""""""""""""""""""""""""""""""
" Config and plugins
""""""""""""""""""""""""""""""""""""""""
" general settings
runtime settings/firenvim.vim
runtime settings/abbr.vim

" filetype-specific settings
au Filetype plaintex runtime settings/latex.vim
au Filetype markdown,plaintex set spell

lua << EOF
require('plugins.plugins')
require('settings')
require('lang')
EOF

set secure
