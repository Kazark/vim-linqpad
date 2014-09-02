" Author: Kazark

if exists('g:linqpad_loaded')
    finish
endif
let g:linqpad_loaded = 1

let g:linqpad_runner_cmd = "LPRun"

function linqpad#EvalExpressionScript(filepath)
    return system(g:linqpad_runner_cmd . ' -lang=E ' . a:filepath)
endfunction

function linqpad#EvalExpression(expr)
    let l:tempfile = tempname()
    call writefile([a:expr], l:tempfile)
    echo linqpad#EvalExpressionScript(l:tempfile)
    call delete(l:tempfile)
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
