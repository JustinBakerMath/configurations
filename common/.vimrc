" ================
" .VIMRC (BDS)
" ================
" Plug-Ins
" =========
"
" Install
" -------
call plug#begin()
Plug 'tpope/vim-sensible' "Sensible settings for vim
Plug 'ap/vim-buftabline' "A well-integrated, low-configuration buffer list that lives in the tabline
Plug 'github/copilot.vim' "GitHub Copilot for vim
Plug 'vim-latex/vim-latex' "LaTeX in Vim
Plug 'neoclide/coc.nvim', {'branch':'release'} "conquerer of completion
Plug 'puremourning/vimspector' "debug
Plug 'preservim/nerdtree' "tree directory
Plug 'morhetz/gruvbox' "Color formatting
call plug#end()
" Settings
" --------
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
let g:NERDTreeIgnore = ['^node_modules$']
let g:vimspector_enable_mappings = 'HUMAN'
let g:coc_global_extensions = ['coc-snippets','coc-pairs','coc-tsserver','coc-eslint','coc-prettier','coc-json']
let g:coc_disable_startup_warning = 1
let g:OmniSharp_translaye_cygwin_wsl = 1

" Directory Management
" ====================
" Backup Files
" -------------
set backup
set backupdir=~/.vim/backups//
set directory=~/.vim/backups//
set undodir=~/.vim/backups//
set writebackup
" Formatting
" ----------
set encoding=utf-8
set fileformat=unix
" pwd
" ----
set autochdir

" Interface
" ==========
" Backspace
" ---------
set bs=2
" Colors
" -------
colorscheme gruvbox
set background=dark
let g:gruvbox_termcolors=16
" Numbering
" ----------
set number
set relativenumber
" Searching
" ----------
set hlsearch
set incsearch
set showmatch
set wildmode=longest
" Show Commands
" -------------
set showcmd
" Syntax
" -------
syntax enable
autocmd BufNewFile,BufRead *.cshtml set syntax=html
filetype indent on
" Tabs
" -----
set autoindent
set shiftwidth=2
set softtabstop=0 noexpandtab
set tabstop=2
" White Space
" ------------
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Commands
" ========
" Key Maps
" --------
nmap <C-n> :NERDTreeToggle<CR>
