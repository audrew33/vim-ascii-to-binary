function! A2B(char)
  let ascii_code = char2nr(a:char)  " Get the ASCII code of the character
  let binary = printf('%08s', printf('%b', ascii_code))  " Convert to binary and format it
  return binary
endfunction
