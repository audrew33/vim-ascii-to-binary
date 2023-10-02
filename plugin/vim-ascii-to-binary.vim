function! A2B(input)
  if a:input =~# '^\d\{1,3}$'
    " Input is a decimal value
    let decimal_value = str2nr(a:input)
    let binary = printf('%012b', decimal_value)
  elseif strlen(a:input) == 1
    " Input is a single character
    let ascii_code = char2nr(a:input)
    let binary = printf('%08s', str2nr(ascii_code, 10, 2))
  else
    return "Invalid input"
  endif

  return binary
endfunction

command! -nargs=1 A2B call s:CharToBinary(<q-args>)

function! s:CharToBinary(char)
  let binary = A2B(a:char)
  echo binary
endfunction
