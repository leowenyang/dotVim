" set blue color font
hi Comment ctermfg=blue

" Tab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:>\ ,eol:¬

" pathogen plugin
execute pathogen#infect()
syntax on
filetype plugin on

" set ignore case
set ic
