" Language Server
nmap ,n <plug>(lsp-rename)
nmap ,h <plug>(lsp-hover)
nmap ,s <plug>(lsp-document-symbol)
nmap ,d <plug>(lsp-definition)
nmap ,D <plug>(lsp-type-definition)
nmap ,f <plug>(lsp-references)
nnoremap ,q :LspStopServer<CR>
nmap <C-n> <plug>(lsp-next-diagnostic)
nmap <C-p> <plug>(lsp-previous-diagnostic)

" Testing
nnoremap ,t :TestNearest<CR>
nnoremap ,T :TestFile<CR>

" QuickRun
nnoremap ,r :QuickRun<CR>
nnoremap ,a :QuickRun -args

" JunkFile
nnoremap ,j :JunkfileOpen

" Basic motions by easymotion
map R <Plug>(edgemotion-k)
map T <Plug>(edgemotion-j)
map ? <Plug>(easymotion-overwin-f2)
map l <Plug>(easymotion-bd-fl)
map * <Plug>(asterisk-z*)
map # <Plug>(asterisk-z#)

" CtrlP
nnoremap <Space><Space> :CtrlP<CR>
nnoremap <Space>t :CtrlPMRU<CR>
nnoremap <Space>c :CtrlPCurFile<CR>

" 補完もろもろ
set completeopt=menuone
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><CR> pumvisible() ? "<C-y>" : "<cr>"
inoremap <expr><Space> pumvisible() ? "<C-y>" : "<Space>"

" Sandwich operations
map ;a <Plug>(operator-sandwich-add)
map ;d <Plug>(operator-sandwich-delete)<Plug>(textobj-sandwich-auto-a)
map ;c <Plug>(operator-sandwich-replace)<Plug>(textobj-sandwich-auto-a)

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Vaffle
nnoremap <Space>l :<C-u>Vaffle<CR>

" Vaffle
augroup vimrc_vaffle
	autocmd!
	au FileType vaffle nnoremap <buffer> . /
	au FileType vaffle nmap <buffer> ~ <Plug>(vaffle-open-home)
	au FileType vaffle nmap <buffer> h <Plug>(vaffle-open-parent)
	au FileType vaffle nmap <buffer> s <Plug>(vaffle-open-current)
	au FileType vaffle nmap <buffer> a <Plug>(vaffle-toggle-all)
	au FileType vaffle nmap <buffer> <Space> <Plug>(vaffle-toggle-current)
	au FileType vaffle vmap <buffer> <Space> <Plug>(vaffle-toggle-current)

	au FileType vaffle nmap <buffer> <CR> <Plug>(vaffle-open-selected)
	au FileType vaffle nmap <buffer> e <Plug>(vaffle-move-selected)
	au FileType vaffle nmap <buffer> d <Plug>(vaffle-delete-selected)
	au FileType vaffle nmap <buffer> n <Plug>(vaffle-rename-selected)
	au FileType vaffle nmap <buffer> q <Plug>(vaffle-quit)
	au FileType vaffle nmap <buffer> o <Plug>(vaffle-mkdir)
	au FileType vaffle nmap <buffer> i <Plug>(vaffle-new-file)
	au FileType vaffle nmap <buffer> R <Plug>(vaffle-refresh)
	au FileType vaffle nmap <buffer> x <Plug>(vaffle-fill-cmdline)
augroup END

" ============================================================
"  FileTypeごとの設定
" ============================================================
" emmet
augroup emmet
	au!
	au FileType html,css,xml imap <S-Tab> <C-y>,<CR><CR><Up>
	au FileType html,css,xml imap <C-f> <C-y>,
augroup END

" go
augroup go
	au!
	au FileType go inoremap <C-e> err != nil {<CR>return 
	autocmd BufWritePre *.go  call execute('LspDocumentFormatSync') | call execute('LspCodeActionSync source.organizeImports')
augroup END
