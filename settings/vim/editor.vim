set incsearch
set autochdir

set backup
set backupdir=~/.cache/vim/
set backupext=.bak

set undofile
set undodir=~/.cache/vim/

set viminfo+=n~/.cache/vim/viminfo.txt

set scl=yes
set nowrap
set noea

set termguicolors
set background=light
colorscheme iceberg

" Easymotion
let g:EasyMotion_keys = 'htsrcmdlgwfbjineayopu,'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_shade = 0
let g:EasyMotion_startofline = 0

" Vaffle
let g:vaffle_show_hidden_files = 1
let g:vaffle_use_default_mappings = 0
let g:vaffle_auto_cd = 1

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2

" vim-lsp
let g:lsp_diagnostics_float_cursor = 1

" Quickrun
let g:quickrun_config = {}
let g:quickrun_config.go = {'command' : 'go', 'exec' : ['%c run .']}

" Sandwich
let g:sandwich_no_default_key_mappings = 1
let g:oparator_sandwich_no_default_key_mappings = 1

" vim-test
let test#strategy = "vimterminal"
