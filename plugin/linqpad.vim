" Author: Kazark
" Purpose: Provide easy access to LinqPad runner functionality for Vim.

if exists('g:linqpad_loaded_plugin')
    finish
endif
let g:linqpad_loaded_plugin = 1

" Linq eval: evaluate the argument as an expression with LinqPad runner
command -nargs=1 -range Linqeval :call linqpad#EvalExpression(<q-args>)
" TODO:
" Linq visual eval: evaluate the selected text as an expression with Linq
" runner
"command -nargs=0 -range Linqveval :call linqpad#EvalSelectionAsExpression()
" Linq visual exec: run the selected text as a statement with LinqPad runner
" Linq exec: run the argument as a statement with LinqPad runner
" F#...
" etc.
