set nocompatible           " Not required if .vimrc is located and loaded by vim.

" Separate file for options
if filereadable(expand("~/.vimrc.options"))
  source ~/.vimrc.options
endif

" Separate file for keymaps
if filereadable(expand("~/.vimrc.keymaps"))
  source ~/.vimrc.keymaps
endif

" Separate file for theme
if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

" Separate file for theme
if filereadable(expand("~/.vimrc.theme"))
  source ~/.vimrc.theme
endif
