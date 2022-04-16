" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on

" Enable type file detection
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

"Load an indent file for the detected file type.
filetype indent on

" Highlight cursor line underneath the cursor horisontally.
set cursorline

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" tab size
set tabstop=4

" Set shift width to 4 spaces.
set shiftwidth=4

" Automatic Indentation
set autoindent

" Tab to white space
set expandtab
set softtabstop=4

" new colorscheme
colorscheme jellybeans
" Custom Highlights
let g:jellybeans_overrides = {
\   'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
\             'ctermfg': 'Black', 'ctermbg': 'Yellow',
\             'attr': 'bold' },
\    'Comment': { 'guifg': 'cccccc' },
\}
" Custom Background Colors
let g:jellybeans_overrides = {
\    'background': { 'guibg': '000000' },
\}
" Terminal Background Color
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif
" Match Paren colors
let g:jellybeans_overrides = {
\    'MatchParen': { 'guifg': 'ffffff', 'guibg': '556779' },
\}
" enable italics for jellybean
let g:jellybeans_use_term_italics = 1

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Show matching words during a search.
set showmatch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Wildmenu wil ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS -----------------------------------------------
execute pathogen#infect()

" MAPPINGS ----------------------------------------------

" VIMSCRIPT ---------------------------------------------

" STATUS LINE -------------------------------------------
