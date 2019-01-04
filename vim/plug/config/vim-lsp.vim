if executable('golsp')
	augroup LspGo
		au!
		au User lsp_setup call lsp#register_server({
					\ 'name': 'go-lang',
					\ 'cmd': {server_info->['golsp']},
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
