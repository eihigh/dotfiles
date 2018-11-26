if executable('go-langserver')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'go-langserver',
				\ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
				\ 'whitelist': ['go'],
				\ })
endif
