call plug#begin('~/.vim/plugged')

Plug 'kennypete/vim-tene'
Plug 'sirver/ultisnips', {'on': []}
Plug 'yegappan/searchcomplete'
Plug 'yegappan/lsp', {'on': []}
Plug 'thaerkh/vim-workspace'
Plug 'vim-scripts/cmdalias.vim'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'github/copilot.vim'
Plug 'girishji/easyjump.vim'
" Plug 'Donaldttt/fuzzyy'
Plug 'chrisbra/Colorizer'
Plug 'jelera/vim-javascript-syntax'
" Plug 'pangloss/vim-javascript', {'on': []}
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'dense-analysis/ale'
Plug 'bfrg/vim-cpp-modern'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'

" colorschemes
Plug 'rose-pine/vim'
Plug 'w0ng/vim-hybrid'
Plug 'nanotech/jellybeans.vim'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()
