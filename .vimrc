execute pathogen#infect()

filetype plugin indent on
syntax on

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax enable
set background=light

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" More palatable searching
set ignorecase
set smartcase

color darkblue
set mouse=a


" ========= NERD Commenter ==========
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1" Add spaces after comment delimiters by default let g:NERDSpaceDelims = 1  " Use compact
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }


"========== VIM UNDO FILE ==========
set undofile   " Maintain undo history between sessions
set undodir=~/.vim/undodir

"========== WHITESPACE MODULE ==========
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" ========== DISABLE hjkl MOVENTMENT ==========
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>

" set line numbers
set number
