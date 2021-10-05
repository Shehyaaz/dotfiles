syntax on

set exrc
set encoding=UTF-8
set noerrorbells
set number
set nowrap
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set incsearch
set scrolloff=8
set background=dark

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'jremmen/vim-ripgrep'
call plug#end()

colorscheme gruvbox

let mapleader = " "
" Ripgrep settings
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow
let g:rg_derive_root='true'

" NERDTree mappings
nnoremap <C-n> :NERDTreeToggle<CR> 
" Window split mappings
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
" Ripgrep mappings
nnoremap \ :Rg <SPACE>
" Fzf mappings
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <leader>. :Files <C-r>=expand("%:h")<CR>/<CR>
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
