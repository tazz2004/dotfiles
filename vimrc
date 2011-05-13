" My Vimrc file
" Maintainer: www.swaroopch.com/contact/
" Reference: Initially based on http://dev.gentoo.org/~ciaranm/docs/vim-guide/
" License: www.opensource.org/licenses/bsd-license.php

" Enable syntax highlighting.
syntax on

set nocompatible
call pathogen#runtime_append_all_bundles()


" Automatically indent when adding a curly bracket, etc.
set smartindent

" Tabs should be converted to a group of 4 spaces.
" This is the official Python convention
" (http://www.python.org/dev/peps/pep-0008/)
" I didn't find a good reason to not use it everywhere.
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=999

" Use UTF-8.
set encoding=utf-8

" Set color scheme that I like.
if has("gui_running")
    colorscheme desert
    else
        colorscheme darkblue
        endif

        " Status line
        set laststatus=2
        set statusline=
        set statusline+=%-3.3n\                      " buffer number
        set statusline+=%f\                          " filename
        set statusline+=%h%m%r%w                     " status flags
        set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
        set statusline+=%=                           " right align remainder
        set statusline+=0x%-8B                       " character value
        set statusline+=%-14(%l,%c%V%)               " line, character
        set statusline+=%<%P                         " file position

        " Show line number, cursor position.
        set ruler

        " Display incomplete commands.
        set showcmd

        " To insert timestamp, press F3.
        nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
        imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

        " To save, press ctrl-s.
        nmap <c-s> :w<CR>
        imap <c-s> <Esc>:w<CR>a

        " Search as you type.
        set incsearch

        " Ignore case when searching.
        set ignorecase

        " Show autocomplete menus.
        set wildmenu

        " Show editing mode
        set showmode

        " Error bells are displayed visually.
        set visualbell
