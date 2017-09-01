source ~/dot_files/.xvimrc

set relativenumber                 " have dynamic numbers on the side of file
set number                         " have a list of numbers on the side of filei

" Set a colorscheme
let g:solarized_termcolors=256
colorscheme Tomorrow-Night

highlight LineNr ctermfg=43        "changes line numbers on the side to a beautiful cyan (xterm color 43)
highlight Comment ctermfg=43        "changes colors beautiful cyan (xterm color 43)

set backspace=indent,eol,start

" show matching delimiters
set showmatch

" smart indenting
set autoindent

" Convert tabs to 4 spaces
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4

" Set auto and smart indent, as well as handle curly brace cursor placement
" set autoindent
set smartindent
imap <C-Return> <CR><CR><C-o>k<Tab>

" Removes trailing whitespace on write for php files
autocmd BufWritePre *.php :%s/\s\+$//e
