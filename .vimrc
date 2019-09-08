" Line numbers on
set number
set numberwidth=5

"Always show current position
set ruler

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

" Enable syntax highlighting
syntax enable 


colorscheme spacecamp_lite
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Always display the status line
set laststatus=2


