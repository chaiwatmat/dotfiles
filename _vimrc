" set nocp
syntax on
set timeoutlen=300 ttimeoutlen=10
set smartcase
set ignorecase
set clipboard=unnamed
set incsearch
set hlsearch
set relativenumber number

" Xaml
au BufNewFile,BufRead *.xaml setf xml
au BufNewFile,BufRead Jenkinsfile* setf groovy

inoremap jk <ESC>
vnoremap jk <ESC>
cnoremap jk <ESC>
nnoremap L Lzz
nnoremap H Hzz
nnoremap hl :<C-U>noh<CR>
nnoremap <Space>w :<C-U>w<CR>
nnoremap <Space>q :<C-U>q!<CR>

" Visual studio 2019 command
nnoremap gd :vsc Edit.GoToImplementation<CR>
nnoremap gb :vsc View.NavigateBackward<CR>
nnoremap s gS:vsc Tools.InvokePeasyMotionTwoCharJump<CR>
nnoremap <Space>p :vsc Edit.PeekDefinition<CR>
nnoremap <Space>; :vsc CodeMaid.FindInSolutionExplorer<CR>
nnoremap <Space>r :vsc Debug.Start<CR>
nnoremap <Space>rr :vsc Debug.StopDebugging<CR>
nnoremap <Space>gh :vsc Team.Git.ViewHistory<CR>
nnoremap <Space>qk :vsc Tools.CustomizeKeyboard<CR>
nnoremap <C-p> :vsc Edit.GoToFile<CR>

nnoremap <Space>tr :vsc ReSharper.ReSharper_UnitTestRunFromContext<CR>
nnoremap <Space>td :vsc ReSharper.ReSharper_UnitTestDebugContext<CR>
nnoremap <Space>ta :vsc ReSharper.ReSharper_UnitTestRunSolution<CR>
nnoremap <Space>tl :vsc ReSharper.ReSharper_UnitTestSessionRepeatPreviousRun<CR>
nnoremap <Space>tt :vsc ReSharper.ReSharper_ShowUnitTestSessions<CR>
nnoremap <Space>tc :vsc ReSharper.ReSharper_CoverTestsInCurrentContext<CR>

" F7 => focus editor
" F9 => mark debug
" F10 => step over
" F11 => step into
" https://vimhelp.org/pattern.txt.html

" nmap <space> gd <Plug>(coc-definition)
" nmap <space> gy <Plug>(coc-type-definition)
" nmap <space> gi <Plug>(coc-implementation)
" nmap <space> gr <Plug>(coc-references)
