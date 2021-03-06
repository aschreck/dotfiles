call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'jiangmiao/auto-pairs' 
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
"Needs to be mapped to the location of fzf
Plug '/home/aaronschreck/.fzf/bin/fzf'
Plug 'tomtom/tcomment_vim'
" Color Theme
Plug 'kaicataldo/material.vim'
"vertical line indent
Plug 'Yggdroot/indentLine'
call plug#end()

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab

set autoread
"
" normal mode and save on focus change
autocmd FocusLost * call feedkeys("\<esc>")
:au FocusLost * :wa

syntax on
if (has('termguicolors'))
  set termguicolors
endif
"colorscheme onedark
" options are: 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material
set number

" add dots to whitespace
"set listchars+=space:·
set list

" Change to normal mode on focus loss
au FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")

" FZF finder
" on mac:
" set rtp+=set rtp+=~/usr/local/bin/fzf
" on linux:
set rtp+=set rtp+=~/.fzf

" NerdTree activation shortcut
nmap <F6> :NERDTreeToggle<CR>

" TypeScript linting
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}
let g:ale_fix_on_save = 1

" Prettier JS on autosave
"autocmd FileType javascript set formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG

" enable JS autocompletes
"call dein#add('Shougo/deoplete.nvim')
"call dein#add('mhartington/nvim-typescript')
"let g:deoplete#enable_at_startup = 1

" Escape mappings
imap jj <Esc>
imap hh <Esc>
imap hj <Esc>
imap jh <Esc>
imap jk <Esc>
imap kj <Esc>
