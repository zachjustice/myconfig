set nocompatible
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"PLUGINS
Plugin 'VundleVim/Vundle.vim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive' " git commands from within vim
Plugin 'leafgarland/typescript-vim' " Syntax highlighting for typescript
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/rainbow_parentheses.vim'

"Color schemes
Plugin 'flazz/vim-colorschemes' " A shit ton of colorschemes

" All of your Plugins must be added before the following line
call vundle#end()            " required

source ~/.vimrc.shared

" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" Airline
let g:airline_powerline_fonts = 1

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

filetype indent plugin on

syntax enable
colorscheme monokai

set nomodeline
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=v
set cmdheight=1
set notimeout ttimeout ttimeoutlen=200
set undofile
set undodir=~/.vim/undodir
set encoding=utf-8
set cursorline
set wildmode=longest:full,full

autocmd Filetype java setlocal ts=4 sts=4 sw=4

"------------------------------------------------------------
" Mappings {{{1

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

nnoremap <leader><space> :nohlsearch<CR>

" Open new split panes to right and bottom, which feels more natural than Vim's default
"------------------------------------------------------------

" Open NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
