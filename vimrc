set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

set ignorecase
set incsearch
set hlsearch
set wildmenu
set foldmethod=syntax 
set foldnestmax=10
set nofoldenable
set foldlevel=2
set relativenumber

inoremap jk <Esc>
vnoremap jk <Esc>
cnoremap jk <C-C>
nnoremap H Hzz
nnoremap L Lzz

let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s2)

" nnoremap jk <esc>          Remap in Normal mode
" inoremap jk <esc>          Remap in Insert and Replace mode
" vnoremap jk <esc>          Remap in Visual and Select mode
" xnoremap jk <esc>          Remap in Visual mode
" snoremap jk <esc>          Remap in Select mode
" cnoremap jk <C-C>          Remap in Command-line mode
" onoremap jk <esc>          Remap in Operator pending mode

" Enable NERDTree by default (except when authoring a commit message) but place cursor in other buffer
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif

" Exit vim if the last buffer is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

