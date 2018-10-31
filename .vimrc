let mapleader = "\<Space>" " Remap leader to space bar

map <leader>wh :wincmd h<CR>
map <leader>wj :wincmd j<CR>
map <leader>wk :wincmd k<CR>
map <leader>wl :wincmd l<CR>

set number
set shiftwidth=4                 
set softtabstop=4                
set tabstop=4                   
set expandtab                  
set encoding=utf-8            
set clipboard=unnamed,unnamedplus

autocmd BufEnter * lcd %:p:h

filetype indent on

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-fugitive'
    let g:fugitive_git_executable = 'LANG=en_US.UTF-8 git'
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gs :Gstatus<CR>

Plug 'ctrlpvim/ctrlp.vim'
    let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(bower_components|_build|deps|elm-stuff|git|node_modules|pub|vendor)$',
        \ 'link': 'manager'
        \ }
    if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g “”'
    endif

    nmap <leader>f :CtrlP<cr>

call plug#end()

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

