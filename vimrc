" Includes many tricks from http://stackoverflow.com/questions/164847/what-is-in-your-vimrc

" Necesary  for lots of cool vim things
set nocompatible
" This shows what you are typing as a command.  I love this!
set showcmd
" Who doesn't like autoindent?
set noautoindent
set noai nocin nosi inde=

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab?  Not me!
set shiftwidth=3
set softtabstop=3
" Line Numbers PWN!
set number
set relativenumber

set clipboard=unnamed
let mapleader=","

" Incremental searching is sexy
set incsearch

" keep search results in the center of the screen
nnoremap n nzz
nnoremap N Nzz

" Highlight things that we find with the search
set hlsearch

" When I close a tab, remove the buffer
set nohidden

" Highlight current line
"set cul
:autocmd InsertEnter * set nocul
:autocmd InsertLeave * set cul
:hi CursorLine cterm=NONE ctermbg=black guibg=black

set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right

set shell=bash
set showmode
set autoread                  " watch for file changes
set ignorecase          " Do case insensitive matching

set wrap
set linebreak
set nolist              " list disables linebreak
set textwidth=0
set wrapmargin=0
autocmd FileType text setlocal textwidth=0

set formatoptions-=cro

:set list!
:set list listchars=tab:»·,trail:·

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

iab --- --------------------------

":set <C-Tab>=^[[1;5I
":set <c-s-tab>=^[[1;6I
"TAB navigation like firefox
:nmap <C-S-Tab> :tabprevious<CR>
:nmap <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<cr>i
imap <C-Tab> <ESC>:tabnext<cr>i
"
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>i
map <C-w> :tabclose<cr>
"
"nnoremap <silent> <C-Right> :tabnext<CR>
"nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" Next Tab
"nnoremap <silent> <C-Right> :tabnext<CR>
-
" Previous Tab
"nnoremap <silent> <C-Left> :tabprevious<CR>

" Quick paste on insert mode.
inoremap <C-v> <C-R>"
" nnoremap <C-v>
" Copy from visual mode:
vnoremap <silent> <C-c> "+y

" Make cursor move as expected with wrapped lines:
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>
nnoremap JJJJ <Nop>
"nnoremap <Tab> <Esc>
"vnoremap <Tab> <Esc>gV
"onoremap <Tab> <Esc>
"inoremap <Tab> <Esc>`^
"inoremap <Leader><Tab> <Tab>

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
"nnoremap <Esc> :noh<CR><Esc>

" add empty lines with no insert mode
" TODO: S-enter doesn't work in vim
map <S-enter> O<Esc>
map <enter> o<Esc>

" CTRL-s to save
nnoremap <silent> <C-s> :write<CR>

" delete char without yank
noremap x "_x
noremap X "_X

" H/L is more natural than 0/$
map H ^
map L $

" Delete trailing spaces
nnoremap <Leader>dw :%s/\s\+$//<CR>:nohl<CR>
vnoremap <Leader>dw :s/\s\+$//<CR>:nohl<CR>

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

"copy line without CR
noremap Y ^y$
" Page down, page up, scroll down, scroll up
" noremap <Space> <C-f>
" noremap - <C-b>
" noremap <Backspace> <C-y>
" noremap <Return> <C-e>

" Set the cursor depending on mode
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

