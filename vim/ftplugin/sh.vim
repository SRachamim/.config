if executable('shfmt')
  let &l:formatprg='shfmt -s -p -ci -sr -kp'
endif
