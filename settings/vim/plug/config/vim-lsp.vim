if executable('gopls')
	augroup LspGo
		au!
		au User lsp_setup call lsp#register_server({
					\ 'name': 'go-lang',
					\ 'cmd': {server_info->['gopls']},
					\ 'whitelist': ['go'],
					\ })
		au FileType go setlocal omnifunc=lsp#complete
	augroup END
endif

if executable('typescript-language-server')
	augroup LspTypeScript
		au!
		au User lsp_setup call lsp#register_server({
					\ 'name': 'typescript-language-server',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server', '--stdio']},
					\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
					\ 'whitelist': ['typescript'],
					\ })
		au FileType typescript setlocal omnifunc=lsp#complete
	augroup END
endif

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	nmap <buffer> gd <plug>(lsp-definition)
	nmap <buffer> <f2> <plug>(lsp-rename)
endfunction

augroup lsp_install
	au!
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
