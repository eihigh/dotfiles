function! s:goyo_enter()
	Goyo 120x85%
	set cursorline
	set scrolloff=999
	set background=light
	if !has("gui")
		let g:solarized_termcolors=256
	endif
	colorscheme solarized
endfunction

function! s:goyo_leave()
	set nocursorline
	set scrolloff=8
	colorscheme iceberg
	set background=dark
endfunction

au! User GoyoEnter nested call <SID>goyo_enter()
au! User GoyoLeave nested call <SID>goyo_leave()
