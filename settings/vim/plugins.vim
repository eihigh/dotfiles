call plug#begin('~/.vim/plugged')

" ------------------------------------------------------------
"  カラースキーム
" ------------------------------------------------------------
Plug 'cocopon/iceberg.vim'
Plug 'rakr/vim-one'
Plug 'cormacrelf/vim-colors-github'
Plug 'koron/vim-monochromenote'

" ------------------------------------------------------------
"  画面操作
" ------------------------------------------------------------
" Close buffer
Plug 'mhinz/vim-sayonara'

" Smooth scrolling
Plug 'yuttie/comfortable-motion.vim'

" Submode
Plug 'kana/vim-submode'

" ------------------------------------------------------------
"  オペレータ、テキスト操作
" ------------------------------------------------------------
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-edgemotion'
Plug 'haya14busa/vim-asterisk'

Plug 'kana/vim-operator-user'
Plug 'osyo-manga/vim-operator-stay-cursor'

Plug 'cohama/lexima.vim'

Plug 'junegunn/vim-easy-align'

" Text object
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'

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
Plug '/usr/local/opt/fzf'
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
" ctags
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpen' }

" ------------------------------------------------------------
"  言語
" ------------------------------------------------------------
" Language Server
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
let g:lsp_async_completion = 1

" QuickRun
Plug 'thinca/vim-quickrun'

" Go
Plug 'mattn/vim-goimports'

" Javascript 系
Plug 'leafgarland/typescript-vim'
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

" ------------------------------------------------------------
"  小回り
" ------------------------------------------------------------
"  日本語ヘルプ
Plug 'vim-jp/vimdoc-ja'

" 使い捨てファイル
Plug 'Shougo/junkfile.vim'

" Gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

call plug#end()
