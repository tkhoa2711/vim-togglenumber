" ============================================================================
" togglenumber.vim -- easy toggling between different numbering modes
"
" Author:   Khoa Le <ltkhoa2711@gmail.com>
" URL:      https://github.com/tkhoa2711/vim-togglenumber
" ----------------------------------------------------------------------------

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

" command for triggering
command! -nargs=0 ToggleNumber call ToggleNumber()

" key mapping for swift invocation
nnoremap <Leader>n :call ToggleNumber()<CR>

