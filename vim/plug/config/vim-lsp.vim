if executable('bingo')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'go-lang',
				\ 'cmd': {server_info->['bingo', '-mode', 'stdio']},
				\ 'whitelist': ['go'],
				\ })
	au FileType go setlocal omnifunc=lsp#complete
endif
