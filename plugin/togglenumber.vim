" togglenumber.vim -- easy toggling between different numbering modes
" @author   : Khoa Le

" check for compatibility and whether it is already loaded
if exists("g:loaded_togglenumber") || &cp || version < 703
    finish
endif

let g:loaded_togglenumber = 1

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

