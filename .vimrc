syntax enable
filetype plugin indent on
set ts=4 sw=4 et
se modeline
se modelines=10
se bg=dark

map <F3> :make
imap <F3> <Esc>:make

se list
se lcs=tab:>-,trail:.
se sta
se nu

se hidden
se history=1000
runtime macros/matchit.vim
se wildmenu

se ignorecase
se smartcase
se scrolloff=3
se incsearch
se hlsearch
se shortmess=atI

noremap  :nohlsearch

if filereadable($HOME . "/local/vimrc")
    source $HOME/local/vimrc
endif
