" set blue color font
hi Comment ctermfg=blue

" Tab
set shiftwidth=4
set tabstop=4
set softtabstop=4
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

" set list
set listchars=tab:>\ ,eol:¬

" pathogen plugin
execute pathogen#infect()

" auto adjust file
syntax on
filetype plugin on
filetype indent on

" set ignore case
set ic
