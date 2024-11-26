vim9script

# set data_dir=has('nvim') ? stdpath('data') . '/site' : '~/.vim'
# if empty(glob(data_dir . '/autoload/plug.vim'))
  # silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  # autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
# endif

# Use plug as package manager
source $VIM_CONFIG/plug.vim

# Load all plugs
source $VIM_CONFIG/vim_plugs.vim

# My Default vim settings
source $VIM_CONFIG/vim_general.vim

# Color settings
source $VIM_CONFIG/vim_colors.vim

# LSP
source $VIM_CONFIG/vim_lsp.vim

