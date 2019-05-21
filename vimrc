execute pathogen#infect()

filetype plugin indent on
syntax on

"""VIM"""
let mapleader = "\<Space>" " Remap leader to space bar
map <leader>wh :wincmd h<CR>
map <leader>wj :wincmd j<CR>
map <leader>wk :wincmd k<CR>
map <leader>wl :wincmd l<CR>

"""NEOVIM"""
let g:python_host_prog = '/full/path/to/neovim2/bin/python'
let g:python3_host_prog = '/full/path/to/neovim3/bin/python'
let g:deoplete#enable_at_startup = 1

"""NERD TREE"""
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeIgnore = ['\.pyc$']
map <C-n> :NERDTreeToggle<CR>

"""NERD COMMENTER"""
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation

"""FLAKE8"""
autocmd BufWritePost *.py call Flake8()


set number
set encoding=utf-8            
set clipboard=unnamed,unnamedplus
set shell=/bin/bash
autocmd BufEnter * lcd %:p:h " For new buffer window set currend directory to head of buffer file
autocmd VimEnter * wincmd p " When open vim 


call plug#begin()
Plug 'nvie/vim-flake8'
    let g:flake8_show_quickfix=0
    let g:flake8_show_in_gutter=1
    let g:flake8_show_in_file=1
Plug 'tpope/vim-fugitive'
    let g:fugitive_git_executable = 'LANG=en_US.UTF-8 git'
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gs :Gstatus<CR>
call plug#end()
