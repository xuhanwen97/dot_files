:noremap <C-j> 5jzz
:noremap <C-k> 5kzz
:noremap <C-o> o<Esc>
:set nu
:set relativenumber                 " have dynamic numbers on the side of file
highlight LineNr ctermfg=43

:set hlsearch
" Press Space to turn off highlighting and clear any message already displayed "
:noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
:set scrolloff=5


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
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e


" Disables smart indent for python
au! FileType python setl nosmartindent

set pastetoggle=<F10>

" Disables the audio bell
set visualbell

" VimPlug
call plug#begin('~/.vim/VimPlug')

" Auto completes brackets and parens
Plug 'https://github.com/jiangmiao/auto-pairs'

" Auto closes HTML tags
Plug 'https://github.com/alvan/vim-closetag'

" Commenting Plugin
Plug 'scrooloose/nerdcommenter'

" Tab completion python libraries
Plug 'https://github.com/rkulla/pydiction'

" Tab completion general vim
Plug 'https://github.com/ervandew/supertab'

call plug#end()
