let s:is_windows = has('win16') || has('win32') || has('win64')

function! IsWindows() abort
  return s:is_windows
endfunction
