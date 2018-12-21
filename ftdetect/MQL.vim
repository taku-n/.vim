augroup MQL
    autocmd!
    " 多重定義の回避

    autocmd BufNewFile,BufRead *.mq5 setlocal expandtab
    autocmd BufNewFile,BufRead *.mq5 setlocal shiftwidth=4
    autocmd BufNewFile,BufRead *.mq5 setlocal softtabstop=4
    autocmd BufNewFile,BufRead *.mq5 setlocal cindent
augroup END
