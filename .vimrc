syntax enable
filetype plugin indent on
set ts=4 sw=4 et
se modeline
se bg=dark

map <F3> :make
imap <F3> <Esc>:make

" telepathy style guide
" set cino=>2s,{1s,n-s,^-s
autocmd FileType python setl tw=78 ts=4 sts=4 sw=4 et
" autocmd FileType c      setl tw=78 ts=2 sts=2 sw=2 et
autocmd FileType html   setl ts=2 sw=2
autocmd FileType css    setl ts=2 sw=2

se list
se lcs=tab:»·,trail:·
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

se backupdir=/var/tmp/vimbackup
se dir=/tmp/vimswap
