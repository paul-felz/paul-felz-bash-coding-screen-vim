"set runtimepath and add library path to make find and gf usable
set rtp+=$RTPATH
set rtp+=$RTPATH/bundle/Vundle.vim
let &path.=$LIBPATH

set nocompatible "not vi-compatible
set ic "caseinsensitive search in vim"

"set language
set langmenu=en_US
let $LANG = 'en_US.UTF-8'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


filetype off
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()

"look and feel
"
filetype plugin indent on "load filetypefile and indentfile from rtp

syntax on
set number
set autoindent	"copy indentation of line before

set tabstop=4 "size of hard tabstop
set shiftwidth=4 "size of an indent
set softtabstop=4 "if expandtab, how many spaces one tab
set expandtab "use spaces instead of tab characters
set smarttab "how tabs are interpreted on cursorposition

autocmd VimResized * wincmd = "adapt resize of terminal window

"set color
set background=dark
set t_Co=256
colorscheme $VIMCOLOR

set backspace=indent,eol,start

