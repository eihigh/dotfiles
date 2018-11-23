call plug#begin('~/.vim/plugged')

" ------------------------------------------------------------
"  カラースキーム
" ------------------------------------------------------------
Plug 'cocopon/iceberg.vim'
Plug 'KKPMW/moonshine-vim'
Plug 'nightsense/snow'
Plug 'nightsense/stellarized'
Plug 'kadekillary/subtle_solo'
Plug 'yuttie/inkstained-vim'
Plug 'altercation/vim-colors-solarized'

" ------------------------------------------------------------
"  画面操作
" ------------------------------------------------------------
" Close buffer
Plug 'mhinz/vim-sayonara'

" Write Room Mode
Plug 'junegunn/goyo.vim'

" Smooth scrolling
Plug 'yuttie/comfortable-motion.vim'

" ------------------------------------------------------------
"  オペレータ、テキスト操作
" ------------------------------------------------------------
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-edgemotion'
Plug 'haya14busa/vim-asterisk'

Plug 'kana/vim-operator-user'
Plug 'osyo-manga/vim-operator-stay-cursor'

" Comment out
Plug 'tyru/caw.vim'

Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Auto nohlsearch
Plug 'romainl/vim-cool'

let g:operator_sandwich_no_default_key_mappings = 1
let g:sandwich_no_default_key_mappings = 1
Plug 'machakann/vim-sandwich'

" ------------------------------------------------------------
"  ファイラ、検索
" ------------------------------------------------------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'

Plug 'cocopon/vaffle.vim'

" ------------------------------------------------------------
"  パッシブ拡張
" ------------------------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ------------------------------------------------------------
"  統合ツール
" ------------------------------------------------------------
" Async linter
Plug 'w0rp/ale'

" Git
Plug 'tpope/vim-fugitive'

" ctags
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpen' }
Plug 'hushicai/tagbar-javascript.vim'

" ------------------------------------------------------------
"  言語
" ------------------------------------------------------------
" QuickRun
Plug 'thinca/vim-quickrun'

" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Javascript 系
Plug 'othree/yajs.vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
Plug 'Chiel92/vim-autoformat'

" Emmet
Plug 'mattn/emmet-vim'

" Markdown
Plug 'shime/vim-livedown'

" YAML
Plug 'stephpy/vim-yaml'

" ------------------------------------------------------------
"  Vim 本体環境
" ------------------------------------------------------------
" 多重起動防止
if has('clientserver')
	Plug 'thinca/vim-singleton'
endif

" プロジェクトローカルvimrc
Plug 'thinca/vim-localrc'

" 即時再起動
Plug 'tyru/restart.vim'

" 日本語入力固定
Plug 'fuenor/im_control.vim'

" ------------------------------------------------------------
"  小回り
" ------------------------------------------------------------
" 使い捨てファイル
Plug 'Shougo/junkfile.vim'

call plug#end()
