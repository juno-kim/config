syntax on

" Set to auto read when file contents change on disk
set autoread
" Ignore case when searching
set ignorecase
"Be smart about searching with cases
set smartcase
"highlight search results
set hlsearch
"makes search act like browser search
set incsearch
"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
"set ai "auto indent
"set si "smart indent
set wrap "wrap lines

set expandtab
set nu

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
