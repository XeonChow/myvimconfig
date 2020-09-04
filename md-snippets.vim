autocmd FileType markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd FileType markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd FileType markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd FileType markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd FileType markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd FileType markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd FileType markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd FileType markdown inoremap <buffer> ,c ``` <Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd FileType markdown inoremap <buffer> ,e $$<Enter><Enter>$$<Enter><Enter><++><Esc>3ki
autocmd FileType markdown inoremap <buffer> ,m - [ ]
autocmd FileType markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd FileType markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd FileType markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap <buffer> ,l --------<Enter>
