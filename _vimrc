" set nocp
syntax on
set timeoutlen=300 ttimeoutlen=10
set smartcase
set ignorecase
set clipboard=unnamed
set hlsearch
set relativenumber

" Xaml
au BufNewFile,BufRead *.xaml setf xml

" Press jk to return to normal mode
inoremap jk <ESC>
vnoremap jk <ESC>
cnoremap jk <ESC>

" Next tab
" noremap <Tab> :<C-U>tabnext<CR> 
" noremap <S-Tab> :<C-U>tabp<CR> 

" Visual studio 2019 command
nnoremap gd :vsc Edit.GoToImplementation<CR>
nnoremap gb :vsc View.NavigateBackward<CR>
nnoremap <C-p> :vsc Edit.GoToFile<CR>
nnoremap <Space><Space> gS:vsc Tools.InvokePeasyMotionTwoCharJump<CR>
nnoremap <Space>p :vsc Edit.PeekDefinition<CR>
nnoremap <Space>/ :<C-U>noh<CR>
nnoremap <Space>; :vsc CodeMaid.FindInSolutionExplorer<CR>
nnoremap <Space>r :vsc Debug.Start<CR>
nnoremap <Space>rr :vsc Debug.StopDebugging<CR>
nnoremap <Space>gh :vsc Team.Git.ViewHistory<CR>
nnoremap <Space>qk :vsc Tools.CustomizeKeyboard<CR>

map <Space>tr :vsc ReSharper.ReSharper_UnitTestRunFromContext<CR>
map <Space>td :vsc ReSharper.ReSharper_UnitTestDebugContext<CR>
map <Space>ta :vsc ReSharper.ReSharper_UnitTestRunSolution<CR>
map <Space>tl :vsc ReSharper.ReSharper_UnitTestSessionRepeatPreviousRun<CR>
map <Space>tt :vsc ReSharper.ReSharper_ShowUnitTestSessions<CR>

nnoremap <Space>w :<C-U>w<CR>
nnoremap <Space>q :<C-U>q!<CR>

" Navigation
map L Lzz
map H Hzz

" zz, zt, zb
" F5 => start debugging
" F7 => focus editor
" F9 => mark debug
" F10 => step over
" F11 => step into
" Shift + F5 => stop debugging
" https://vimhelp.org/pattern.txt.html

" nnoremap <Space>s "zyiw/<C-r>z<CR>N
" nnoremap <Space>r
