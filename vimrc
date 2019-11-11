
set nocompatible    " enable all Vim-only options (default)
filetype off

" My options
set modeline
set background=dark
set tabstop=4
set expandtab
set shiftwidth=4
set wildmode=longest,list
"set fdm=marker
set smartindent
syntax on

set formatoptions+=or
" o = format after pressing o or O
" r = format after pressing Return

set ruler           " show cursor position in the corner (default)
set laststatus=2    " Always show a status line at the bottom
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c%V\ %)%P
set scrolloff=3     " always show 3 lines before/after the cursor
" Farbige Suche aktivieren
set hlsearch

nnoremap <silent> <F5> :!php-check %<CR>
" Letzte Suche nicht mehr bunt machen
nnoremap <silent> <C-n> :nohl<CR>
" Nach dem aktuellen Wort suchen, aber ohne den Cursor zu bewegen
nnoremap <silent> <Leader># :let @/='\<'.expand('<cword>').'\>'\|set hlsearch<CR>
nnoremap <silent> <Leader>* :let @/='\<'.expand('<cword>').'\>'\|set hlsearch<CR>
nnoremap <silent> <Leader>g# :let @/ = expand('<cword>')\|set hlsearch<CR>
nnoremap <silent> <Leader>g* :let @/ = expand('<cword>')\|set hlsearch<CR>
nnoremap <Leader>/ :set hlsearch\|let @/='
nnoremap <silent> <Leader>h :let @/='<C-r>"'<CR>

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set fdm=syntax

set colorcolumn=121
highlight ColorColumn ctermbg=1 guibg=lightgrey

" Enable vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Add vundle plugins
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'lumiliet/vim-twig'

filetype plugin indent on

map <silent> <C-n> :NERDTreeFocus<CR>

map <S-F5> <Esc>:EnableFastPHPFolds<Cr>
map <S-F6> <Esc>:EnablePHPFolds<Cr>
map <S-F7> <Esc>:DisablePHPFolds<Cr>
