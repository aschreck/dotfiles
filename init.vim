call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'jiangmiao/auto-pairs' 
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
call plug#end()


set rtp+=set rtp+=~/.fzf
syntax on
colorscheme onedark
set number

" add dots to whitespace
set listchars+=space:·
set list

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
