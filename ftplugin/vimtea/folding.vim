"   let g:tex_indent_items = 1
" * g:tex_indent_brace
" * g:tex_indent_items
" * g:tex_items
" * g:tex_itemize_env
" * g:tex_noindent_env

"set foldtext=getline(v:foldstart).'\ \ \ /'.v:foldlevel.'...'.(v:foldend-v:foldstart)
setlocal foldmethod=expr
setlocal foldexpr=MyFolds(v:lnum)

let [s:lnum, s:lev] = [1, 0]
function! MyFolds(lnum)
    if s:lnum != a:lnum
        let s:lev = foldlevel(a:lnum-1)
        if getline(a:lnum-1) =~# '§§' && s:lev>0
            let s:lev -= 1
        endif
    endif
    let s:lnum = a:lnum+1
    let thisline = getline(a:lnum)
    if thisline =~# '§\w+§.*'
        let s:lev += 1
        return '>'.s:lev
    elseif thisline =~# '§§' && s:lev>0
        let lev = s:lev
        let s:lev -= 1
        return '<'.lev
    else
        return s:lev
    endif
endfunction
