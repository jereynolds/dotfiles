" debugger enable
" let g:coc_node_args = ['--nolazy', '--inspect-brk=6045']

" configure noshowmode so echodoc.vim isn't overwritten by the -- INSERT --
" text
set noshowmode

" Use tab and shift+tab to navigate forward/back on completion list and
" snippets
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
let g:coc_snippet_next = '<tab>'

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use enter to confirm completion
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" make <cr> select the first completion item and confirm completion when no
" items have selected:
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Jump to definition with gd
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gh <Plug>(coc-diagnostic-info)

function! g:CocShowDocumentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" don't give |ins-completion-menu| messages in the message buffer
set shortmess+=c
