filetype plugin on
set showcmd
"cautocmd BufReadPost * call plug#begin('~/.vim/plugged')
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
""Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/rakr/vim-one'
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
";"colorscheme onedark
set background=dark
ab co console.log(

"for whitsepace
set listchars=space:·
highlight WhiteSpaceBol guifg=blue
highlight WhiteSpaceMol guifg=white
match WhiteSpaceMol / /
2match WhiteSpaceBol /^ \+/


syntax on

""inoremap jj <Esc>/<++><Enter>"_c4l
inoremap jj <Esc>
nnoremap <F2> <Esc>:NERDTreeToggle<Enter>
nnoremap <F3> <Esc>:vsplit<Enter>
nnoremap <F4> <Esc>:split<Enter>
nnoremap <F5> <Esc>:FZF<Enter>
nnoremap <F11> <Esc>:vsplit $MYVIMRC<Enter>

set list
"set listchars=tab:>-
""<++>inoremap ( ()<++><Esc>F)i
""<++>inoremap { {}<++><Esc>F}i
""<++>inoremap [ []<++><Esc>F]i
""<++>inoremap " ""<++><Esc>F"i
inoremap ( ()<Esc>i
inoremap nn {}<Esc>i
inoremap { {}<Esc>i<CR><Esc>O
inoremap [ []<Esc>i
inoremap " ""<Esc>i


map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
""nnoremap B ^^
""nnoremap E $$ 
""nnoremap <S-s> <esc>:w
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
hi CursorLine gui=underline cterm=underline
" unclear what Fet>i does. F is find. e is from em and the rest i dont know
autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i


set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"autocmd ColorScheme * highlight WhiteSpaces gui=undercurl guifg=LightGray | match WhiteSpaces / \+/ 

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
"color peachpuff
"color industry
"color onedark
""autocmd BufEnter * colorscheme onedark
""autocmd BufEnter * colorscheme apprentice

call plug#end()
