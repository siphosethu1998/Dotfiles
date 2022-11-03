set number
set relativenumber
set tabstop=4 softtabstop=4 
set shiftwidth=4 " will shift 4 spaces when using >>
set autoindent		" will indent automatically
set expandtab	"converts tab to spaces
syntax enable

" setting up vundle and other plugins
set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
  
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ultinips and vim-snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()
filetype plugin indent on    " required

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

" increment letters as well
set nrformats+=alpha
