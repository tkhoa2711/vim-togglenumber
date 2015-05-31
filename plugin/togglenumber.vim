" togglenumber.vim -- easy toggling between different numbering modes
" @author   : Khoa Le

" check for compatibility
if version < 703
    finish
endif

" toggle between no number, absolute number and relative number
function! ToggleNumber()
    if &relativenumber
        set norelativenumber
    elseif &number
        set relativenumber
    else
        set number
    endif
endfunc

" absolute number by default
autocmd BufEnter * :set number

" key mapping for swift invocation
nnoremap <F6> :call NumberToggle()<CR>

