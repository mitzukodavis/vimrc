syntax on

colorscheme monokai

hi Normal ctermbg=16 guibg=#1a1a1a
hi LineNr ctermbg=16 guibg=#1a1a1a

set hidden

""set tabstop=2 softtabstop=2
set nobackup
set relativenumber
set noswapfile
""set incsearch for future
" guard for distributions lacking the persistent_undo feature.
if has('persistent_undo')
    " define a path to store persistent_undo files.
    let target_path = expand('~/.config/vim-persisted-undo/')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call system('mkdir -p ' . target_path)
    endif

    " point Vim to the defined undo directory.
    let &undodir = target_path

    " finally, enable undo persistence.
    set undofile
endif

set number
set cursorline
set cursorcolumn

set shiftwidth=1
set softtabstop=1
"
"LeaderKey"
let mapleader = " "
"change control w to leader w for no close windows on browser"
:nnoremap <Leader>w <C-w>
"close automatic"
"use surround instead
""inoremap { {}<Esc>ha
""inoremap ( ()<Esc>ha
""inoremap [ []<Esc>ha
""inoremap /" /""<Esc>ha
""inoremap ' ''<Esc>ha
""inoremap ` ``<Esc>ha
""inoremap < <><Esc>ha

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

map <C-Tab> gt
map <C-S-Tab> gT
""Plug 'dart-lang/dart-vim-plugin'

""Plug 'natebosch/vim-lsc'
""Plug 'natebosch/vim-lsc-dart'
"Plug 'preservim/nerdtree'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'dart-lang/dart-vim-plugin'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nathanaelkane/vim-indent-guides'

Plug 'thosakwe/vim-flutter'

Plug '907th/vim-auto-save'

Plug 'easymotion/vim-easymotion'


Plug 'frazrepo/vim-rainbow'


Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdcommenter'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'tpope/vim-surround'

Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'
call plug#end()

""Plug 'dart-lang/dart-vim-plugin'

nnoremap <leader>df :DartFmt<cr>
let g:dart_style_guide = 2
let g:lsc_auto_map = v:true

"""Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=237  ctermbg=236
hi IndentGuidesEven guibg=234 ctermbg=233

"" Plug 'thosakwe/vim-flutter'
"flutter"
nnoremap <leader>fa :FlutterRun -d chrome --release<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>
"

"vim auto save
let g:auto_save = 1 
let g:auto_save_silent = 1
"
"nerdtree
"let NERDTreeShowHidden=1
":autocmd vimenter * NERDTree
"nnoremap <leader>nt :NERDTreeToggle<cr>
"let NERDTreeShowBookmarks=1
"
":let g:NERDTreeWinSize=20

""Plug 'frazrepo/vim-rainbow'

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'magenta']
""
"easymotion"'
" Move to word
map  <Leader>f <Plug>(easymotion-bd-w)
"coc"

source $HOME/.config/nvim/plug-config/coc.vim

""nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

xmap <leader>cd  <Plug>(coc-definition)

"line"
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }
"nerdcommenter"
 
"let g:NERDCreateDefaultMappings = 0

"nnoremap <leader>cc :NERDCommenterToggle<cr>


