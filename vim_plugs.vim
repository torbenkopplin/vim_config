call plug#begin('~/.vim/plugged')

Plug 'kennypete/vim-tene'
" Plug 'sirver/ultisnips', {'on': []}
" Plug 'yegappan/searchcomplete'
Plug 'yegappan/lsp'
Plug 'thaerkh/vim-workspace'
Plug 'vim-scripts/cmdalias.vim'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'github/copilot.vim'
Plug 'girishji/easyjump.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'chrisbra/Colorizer'
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'
Plug 'bfrg/vim-cpp-modern'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'

" colorschemes
Plug 'rose-pine/vim'
Plug 'w0ng/vim-hybrid'
Plug 'nanotech/jellybeans.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'

call plug#end()
