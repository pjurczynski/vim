function! WidowControlFunction()
%s/\c\<\(i\|o\|w\|u\|że\|z\) /\1\&nbsp;/g
endfunction

command! WidowControl call WidowControlFunction()
