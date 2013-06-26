" enable pathogen
call pathogen#infect()

set expandtab
set tabstop=4
set shiftwidth=4

set background=dark
colorscheme solarized
colorscheme delek

" for improving use of paste in putty
set pastetoggle=<F10>

" add best esc mapping ever
inoremap jk <esc>
inoremap kj <esc>
inoremap Jk <esc>
inoremap Kj <esc>
inoremap jK <esc>
inoremap kJ <esc>
inoremap JK <esc>
inoremap KJ <esc>

" Remove spaces at the end of the file
autocmd BufWritePre *{.html\|.module\|.install\|.test\|.inc\|.view\|.ftl\|.txt\|.css\|.js\|.php} :%s/\s\+$//e

" Intent fix
set autoindent
set smartindent
filetype indent on

set number

" Drupal *.module and *.install files.
augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
    autocmd BufRead,BufNewFile *.ftl set filetype=html.ftl
augroup END
