set nocompatible        " be iMproved, required
filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-syntastic/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'
"Plugin 'jaxbot/syntastic-react'
"Plugin 'yannickcr/eslint-plugin-react'
Plugin 'takac/vim-hardtime'
Plugin 'jiangmiao/auto-pairs'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-commentary'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'dense-analysis/ale'
Plugin 'Quramy/tsuquyomi'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Pathogen Plugin Mangager
"execute pathogen#infect()

" Line numbers on
set number relativenumber
set numberwidth=5

augroup  numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

augroup linehighlight
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#111111
  autocmd BufEnter * match OverLength /\%75v.*/
augroup END

" Always show current position
set ruler

" Do Not Recognise Octal Numbers for C-A and C-X
set nrformats-=octal

" Height of the command bar
set cmdheight=2

" Tab 4 space chars
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Show hidden punctuation
set listchars=eol:$,tab:>-,trail:~,extends:»,precedes:«,space:·,nbsp:␣
set list

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" for vim 8
if (has("termguicolors"))
  set termguicolors
endif

set t_ut= "fixes tmux with magic

" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Always display the status line
set laststatus=2

" Set Colorscheme
let g:gruvbox_italic=1 "enables italics
colorscheme gruvbox
set background=dark "setting dark mode

" bindings
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ]r :ALENextWrap<CR>            " move to the next ALE warning / error
nnoremap [r :ALEPreviousWrap<CR>        " move to the previous ALE warning / error

" Prettier FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'typescript': ['tasserver', 'tslint'],
\ 'vue': ['eslint']
\}

let g:ale_fixers = {
  \     'javascript': ['eslint'],
  \     'typescript': ['prettier', 'tslint'],
  \     'vue': ['eslint'],
  \     'scss': ['prettier'],
  \     'html': ['prettier']
\}
" let g:ale_fix_on_save = 1


" Syntastic settings
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']
set signcolumn=yes

" Finding Files:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Now We Can:
"   Hit tab to :find by partial match
"   Use * to make it fuzzy

" Things To Consider:
"  - :b lets you autocomplete any open buffer

" Tag Jumping:

" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

" Now We Can:
"   Use ^] to jump to tag under cursor
"   Use g^] for ambiguous tags
"   Use ^t to jump back up the tag stack
"
" Things To Remember:
"   This doesn't help if you want a visual list of tags
"
" Autocomplete:
"   The good stuff is documented in |ins-completion|
"
" Highlights:
"   ^x^n for JUST this file
"   ^x^f for filenames (works with our path trick!)
"   ^x^] for tags only
"   ^p for anything specified by the 'complete' option
"
" Hardtime Settings:
let g:hardtime_default_on = 1
let g:hardtime_allow_different_key = 1
let g:hardtime_maxcount = 2

