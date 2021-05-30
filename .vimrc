set encoding=utf-8 
filetype off
set shellslash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline' 
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
 "Plugin 'Solarized'
 Plugin 'ycm-core/YouCompleteMe'
 Plugin 'vhda/verilog_systemverilog.vim'
 Plugin 'Markdown'
 Plugin 'flazz/vim-colorschemes'
 Plugin 'scrooloose/nerdtree' 
 filetype plugin indent on 

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 ":PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line

 syntax on
 set clipboard=unnamed "VI 與剪貼板互用
 set nocompatible
 set backspace=indent,eol,start
 filetype plugin on
 "set guifont=Terminal:h17:cANSI "Source_Code_Pro:h14 " for Windows
 set nu
 set t_Co=256
 set showbreak=->
colorscheme gruvbox 
set background=dark
 set autoindent
 set shiftwidth=3
 set pastetoggle=<F4>
 set tabstop=3
 set wildmenu
 set wildmode=full
 set expandtab
 set cursorline "凸顯當前行
 hi CursorLine cterm=none ctermbg=33 ctermfg=White "設定當前行顯示方式
 set cursorcolumn "凸顯當前列
 hi CursorColumn cterm=none ctermbg=237 ctermfg=White "設定當前列顯示方式
 set history=200
 set hidden "buffer 切換時,不用先儲存
 "set tags=tags
 "set tags+=./tags
 cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'
 "let Tlist_Ctags_Cmd="/usr/bin/ctags"
" map <F5> :!cscope -Rbq<CR>:cs reset<CR><CR>:!ctags -R --C-kinds=+p --fields=+aS --extra=+q<CR><CR> :TlistUpdate<CR> 
"map <F8> :w<CR> :!gcc % && ./a.out <CR>
 nnoremap <Leader>l :ls<CR>
 nnoremap <Leader>b :bp<CR>
 nnoremap <Leader>f :bn<CR>
 nnoremap <Leader>g :e#<CR>
 nnoremap <Leader>1 :1b<CR>
 nnoremap <Leader>2 :2b<CR>
 nnoremap <Leader>3 :3b<CR>
 nnoremap <Leader>4 :4b<CR>
 nnoremap <Leader>5 :5b<CR>
 nnoremap <Leader>6 :6b<CR>
 nnoremap <Leader>7 :7b<CR>
 nnoremap <Leader>8 :8b<CR>
 nnoremap <Leader>9 :9b<CR>
 nnoremap <Leader>0 :10b<CR>
  "map <F9> :Tlist<CR>
 nmap zz :w<CR> "重定義zz為存檔
  "
  "按下F3自動補全代碼，注意該映射語句後不能有其他字符，包括tab；否則按下F3會自動補全一些亂碼
  "imap <F3> <C-X><C-O>
  " " 按下F2根據頭文件內關鍵字補全
  "imap <F2> <C-X><C-I>
  inoremap <C-r>+ <C-g>u<C-\><C-o>"+gP
  nmap <A-UP> :m-2<CR>
  nmap <A-DOWN> :m+1<CR>
  vmap <A-DOWN> :m'>+<CR>gv=gv
  vmap <A-UP> :m-2<CR>gv=gv
  imap <A-DOWN> <Esc>:m+<CR>==gi
  imap <A-UP> <Esc>:m-2<CR>==gi
  set completeopt=menu,menuone " 關掉智能補全時的預覽窗口
  let OmniCpp_MayCompleteDot = 1 " autocomplete with .
  let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
  let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
  let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
  let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included
  let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
  let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
  let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members
  let OmniCpp_DefaultNamespaces=["std"]
  let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the last column
  let OmniCpp_ShowAccess=1

"//YCM設定
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'  "//全域性組態檔路徑
let g:ycm_confirm_extra_conf = 0  "//關閉每次匯入組態檔前的詢問
let g:syntastic_always_populate_loc_list = 1  "//方便使用syntastic進行語法檢查
let g:ycm_seed_identifiers_with_syntax=1 "//開啓語法關鍵字補全
let g:ycm_min_num_of_chars_for_completion=1  "//從第一個鍵入字元就開始羅列匹配項

"//設定YCM語意補全自動觸發條件
let g:ycm_semantic_triggers =  {
     \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
         \ 'cs,lua,javascript': ['re!\w{2}'],
         \ }
"vim/air-line
let g:airline_detect_modified = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme='hybridline'
" 開啟vim時,自動開啟NERDTree
"autocmd vimenter * NERDTree
"
" 設定NerdTree開啟的快捷鍵,可自行更改
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

"syntastic 語法檢查
":lop[en]：開啟檢查視窗
":lcl[ose]：關閉檢查視窗
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_python_checkers=['pylint']
let g:syntastic_c_checkers=['gcc']
let g:syntastic_cpp_checkers=['gcc']
