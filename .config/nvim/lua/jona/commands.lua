fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup end

augroup FileTypeSpecificAutocommands
    autocmd!
    autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType vue setlocal tabstop=2 softtabstop=2 shiftwidth=2

    autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4

    autocmd FileType tex setlocal tw=80 cc=80 spell
    autocmd FileType markdown setlocal tw=80 cc=80 spell
    autocmd FileType gitcommit setlocal tw=68 cc=80 spell
augroup END

fun! LspLocationList()
    lua vim.diagnostic.setloclist({open = false, severity = {min=vim.diagnostic.severity.HINT}})
endfun

augroup THE_PRIMEAGEN_LSP
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
augroup END

-- Format files that can be formatted by LSP on save
augroup FORMAT_LSP_FILETYPES
    autocmd!
    autocmd! BufWrite *.php :lua vim.lsp.buf.formatting()
augroup END
