" Pathogen Plugin Mangager
execute pathogen#infect()

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

" for vim 8
if (has("termguicolors"))
  set termguicolors
endif

set t_ut= "fixes tmux with magic

" Enable syntax highlighting
syntax enable
syntax on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Always display the status line
set laststatus=2

" Set Colorscheme
let g:gruvbox_italic=1 "enables italics
colorscheme gruvbox
set background=dark "setting dark mode

" Set Colorscheme
"colorscheme spacecamp_lite
"set background=dark

