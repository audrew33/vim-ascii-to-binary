function! A2B(char)
  let ascii_code = char2nr(a:char)
  let binary = printf('%08b', ascii_code)
  return binary
endfunction

command! -nargs=1 A2B call s:CharToBinary(<q-args>)

function! s:CharToBinary(char)
  let binary = A2B(a:char)
  echo binary
endfunction
