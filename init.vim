call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'

call plug#end()

set rtp+=/root/.fzf
set background=dark

filetype plugin on
set shiftwidth=2
set tabstop=2
set expandtab
set relativenumber
set number
set hidden
set cursorline

let g:mapleader=" "

nnoremap <Leader>/ :Ag<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :buffers<CR>:buffer<SPACE>

colorscheme gruvbox

