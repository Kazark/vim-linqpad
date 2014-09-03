" Author: Kazark

if exists('g:linqpad_loaded')
    finish
endif
let g:linqpad_loaded = 1

let g:linqpad_runner_cmd = "LPRun"

function linqpad#RunLinqPad(filepath, lang)
    return system(g:linqpad_runner_cmd . ' -lang=' . a:lang . ' ' . a:filepath)
endfunction

function linqpad#PassCodeSnippetToLinqPad(snippet, lang)
    let l:tempfile = tempname()
    call writefile([a:snippet], l:tempfile)
    echo linqpad#RunLinqPad(l:tempfile, a:lang)
    call delete(l:tempfile)
endfunction

function linqpad#EvalExpression(expr)
    call linqpad#PassCodeSnippetToLinqPad(a:expr, 'E')
endfunction

function linqpad#ExecStatement(statement)
    call linqpad#PassCodeSnippetToLinqPad(a:statement, 'S')
endfunction

"function linqpad#EvalSelectionAsExpression()
"    let l:save_reg_a = getreg('a')
"    " Reselect last visual selection
"    normal `<"ay`>
"    echo "@a: " . @a
"    let l:expr = @a
"    call setreg('a', l:save_reg_a)
"    call linqpad#EvalExpression(l:expr)
"endfunction
