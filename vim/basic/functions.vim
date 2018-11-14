" Change current directory.
function! s:ChangeCurrentDir(directory, bang)
	if a:directory == ''
		lcd %:p:h
	else
		execute 'lcd' . a:directory
	endif

	if a:bang == ''
		pwd
	endif
endfunction

command! -nargs=? -complete=dir -bang CD call s:ChangeCurrentDir('<args>', '<bang>')
nnoremap <silent> _ :<C-u>CD<CR>

" Exec command without moving cursor.
function! Preserve(command)
	let search = @/

	let cursor_position = getpos('.')

	normal! H
	let window_position = getpos('.')
	call setpos('.', cursor_position)

	execute a:command

	let @/ = search
	unlet search

	call setpos('.', window_position)
	unlet window_position
	normal! zt

	call setpos('.', cursor_position)
	unlet cursor_position
endfunction

" Indent without moving cursor.
function! StandardIndent()
	call Preserve('normal gg=G')
endfunction

command! -nargs=? -complete=dir -bang Indent call s:StandardIndent('<args>', '<bang>')
nnoremap <silent> gi :<C-u>Indent<CR>
