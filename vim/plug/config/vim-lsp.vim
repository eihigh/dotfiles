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
