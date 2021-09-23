set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wincent/command-t'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'unblevable/quick-scope'
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

" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']

set ignorecase
set incsearch
set hlsearch
set wildmenu
set foldmethod=syntax 
set foldnestmax=10
set nofoldenable
set foldlevel=2
set relativenumber
" set timeoutlen=300

inoremap jk <Esc>
vnoremap jk <Esc>
cnoremap jk <C-C>
nnoremap H Hzz
nnoremap L Lzz

" nnoremap jk <esc>          Remap in Normal mode
" inoremap jk <esc>          Remap in Insert and Replace mode
" vnoremap jk <esc>          Remap in Visual and Select mode
" xnoremap jk <esc>          Remap in Visual mode
" snoremap jk <esc>          Remap in Select mode
" cnoremap jk <C-C>          Remap in Command-line mode
" onoremap jk <esc>          Remap in Operator pending mode

" easy motion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w) 

" Enable NERDTree by default (except when authoring a commit message) but place cursor in other buffer
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif

" Exit vim if the last buffer is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" How hard can it be?
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
