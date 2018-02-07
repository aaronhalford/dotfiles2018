" Separate file for options
if filereadable(expand("~/.vimrc.options"))
  source ~/.vimrc.options
endif

" Separate file for keymaps
if filereadable(expand("~/.vimrc.keymaps"))
  source ~/.vimrc.keymaps
endif

" Separate file for theme
if filereadable(expand("~/.nvimrc.plugins"))
  source ~/.nvimrc.plugins
endif

" Separate file for theme
if filereadable(expand("~/.vimrc.theme"))
  source ~/.vimrc.theme
endif
