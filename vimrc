""""""""""""""""""""""""""""""""""
"''     leowenyang 
"''     2014-04-20
"''     leowenyang@163.com
"''     version 1.0
"'''''''''''''''''''''''''''''''''
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" file encoding
set fencs=utf-8,chinese,latin1
"set fenc=utf-8
"set enc=utf-8



" font
set guifont=Consolas:h11:cANSI
" set blue color font
hi Comment ctermfg =blue

" Tab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" Only do this part when compiled with support for autocommands
if has("autocmd")
    " Enable file type detection
    filetype on

    " syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make    setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType html    setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css     setlocal ts=2 sts=2 sw=2 expandtab
endif

" number
set nu
" nobackup
set nobackup

" set noswapfile
set noswapfile

" set list
set listchars=tab:>- 


" auto adjust file
syntax on
filetype plugin on
filetype indent on

" set ignore case
set ic

" set marker fold
"set foldmethod=marker
"set foldmarker====,===
"set foldcolumn=3


" auto match () {} []  "" and ''
:inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>ClosePair('}')<CR>
:inoremap [ []<ESC>i
"":inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

function ClosePair(char)
  if getline('.')[col('.')-1]==a:char
    return "\<Right>"
  else
    return a:char
  endif
endfunction


"""""""""""""plugin"""""""""""""""""

" pathogen plugin
execute pathogen#infect()
set laststatus=2

"powerline{
"set guifont=PowerlineSymbols for Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'

" NERDTree
let NERDTreeWinPos='right'

" Taglist
let Tlist_Show_One_File=1 "only show current file tag
let Tlist_Exit_OnlyWindow=1 "if last window is taglist, exit
let Tlist_Use_Left_Window=1 " Taglist window position

" doxygentoolkit
let g:DoxygenToolkit_authorName="leo, leowenyang@163.com"
let s:licenseTag="For free"
let g:DoxygenToolkit_licenseTag=s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

"go"
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
