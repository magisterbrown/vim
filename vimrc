" Comments in Vimscript start with a `"`.
"Test text"

" If you open this file in Vim, it'll be syntax highlighted for you.

"Legacy some vi compatability"
set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

"Relative numbers"
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

"Normal back space behaviour"
set backspace=indent,eol,start


"Allow existance of hidden usaved tabs more info `:help hidden`"
set hidden

"Ignore case search always Smart search with capitals"
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch
set hlsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

"Prevents bad habbits"
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>


inoremap <Down>  <ESC>:echoe "Use j"<CR>

"Remap esc to jk/kj"
imap jk <Esc>
imap kj <Esc>

"viminfo file location"
set viminfo+=n~/.vim/viminfo

"Different language vim configs
"File type detection
filetype on
augroup Lang_Settings
    "the command below execute the script for the specific filetype py 
    autocmd FileType python source ~/.vim/LangSpecifications/python-settings.vim

    "the command below execute the script for the specific filetype Java
    autocmd FileType java source ~/.vim/LangSpecifications/java-settings.vim
augroup END 
