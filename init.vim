"
"default settings

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
syntax enable
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set lazyredraw
set number
set inccommand=split

" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent


" highlight line

set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight CursorLine cterm=NONE ctermbg=239 ctermfg=NONE guibg=Grey30
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

"import
source ~/.config/nvim/plug.vim
source ~/.config/nvim/maps.vim







"enable folding
"set foldmethod=syntax
"set foldcolumn=1
"

"automatic line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END


"-- FOLDING --  
set foldmethod=indent "syntax highlighting items specify folds  
set foldlevelstart=99 "start file with all folds opened
let javaScript_fold=1 "activate folding by JS syntax  
let json_fold=1 "activate folding by JS syntax  


"theme
"colorscheme dracula
"colorscheme omni
colorscheme tokyonight

