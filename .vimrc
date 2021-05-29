"set runtimepath and add library path to find and gf
set rtp+=$RTPATH
let &path.=$LIBPATH

"set language
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set nocompatible
syntax on

filetype plugin indent on

set number
set autoindent
set tabstop=4
set shiftwidth=4
set ic
set softtabstop=4
set expandtab
set smarttab
set background=dark

autocmd VimResized * wincmd =

set t_Co=256

colorscheme $VIMCOLOR

