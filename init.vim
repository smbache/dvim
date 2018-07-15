call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/vim-peekaboo'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'

call plug#end()

set rtp+=/root/.fzf
set background=dark

colorscheme gruvbox

filetype plugin on
set shiftwidth=2
set tabstop=2
set expandtab
set relativenumber
set number
set hidden
set cursorline

let g:mapleader=" "

command! Rmws %s/\s\+$//e

nnoremap <Leader>/ :Ag<CR>
nnoremap <Leader><c-l> :call fzf#vim#buffer_lines(expand('<cword>'))<CR>
nnoremap <Leader><c-L> :call fzf#vim#lines(expand('<cword>'))<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>l :BLines<CR>
nnoremap <Leader>L :Lines<CR>
nnoremap <Leader>w :Windows<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

set clipboard+=unnamedplus
