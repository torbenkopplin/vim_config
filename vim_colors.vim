vim9script

autocmd ColorScheme rosepine hi LspDiagVirtualTextError guifg=#EB6F92 guibg=NONE gui=NONE cterm=NONE
autocmd ColorScheme rosepine hi LspDiagVirtualTextWarning guifg=#31748F guibg=NONE gui=NONE cterm=NONE
autocmd ColorScheme rosepine hi LspDiagVirtualTextHint guifg=#31748F guibg=NONE gui=NONE cterm=NONE
autocmd ColorScheme rosepine hi LspDiagVirtualTextInfo guifg=#31748F guibg=NONE gui=NONE cterm=NONE

autocmd ColorScheme rosepine hi LspDiagSignErrorText guifg=#EB6F92 guibg=NONE gui=NONE cterm=NONE
autocmd ColorScheme rosepine hi LspDiagSignHintText guifg=#31748F guibg=NONE

autocmd ColorScheme rosepine hi LspDiagInlineError guibg=#EB6F92 guifg=black 
autocmd ColorScheme rosepine hi LspDiagInlineWarning guibg=#31748F guifg=black
autocmd ColorScheme rosepine hi LspDiagInlineHint guibg=#31748F guifg=black
autocmd ColorScheme rosepine hi LspDiagInlineInfo guibg=#9CCFD8 guifg=black

autocmd ColorScheme rosepine hi StatusLineNC guibg=#1F1D2E

autocmd ColorScheme palenight hi Search guifg=LightMagenta guibg=NONE
autocmd ColorScheme palenight hi CurSearch guifg=LightMagenta

# ayu colorscheme fixes
autocmd ColorScheme ayu hi jsFuncArgs guifg=#D4BFFF   # Function arguments 
autocmd ColorScheme ayu hi jsFunction guifg=#FF7733
autocmd ColorScheme ayu hi jsBooleanTrue guifg=#D4BFFF
autocmd ColorScheme ayu hi jsBooleanFalse guifg=#D4BFFF
autocmd ColorScheme ayu hi jsThis guifg=#36A3D9
autocmd ColorScheme ayu hi Normal guibg=#0A0F14          # Background color
# Clear syntax for any parentheses so rainbowparentheses work again
autocmd FileType javascript syntax clear jsBracket jsParen jsParenDecorator jsParenIfElse jsParenWhile jsParenFor jsParenSwitch jsParenCatch jsFuncArgs jsClassBlock jsFuncBlock jsIfElseBlock jsTryCatchBlock jsFinallyBlock jsSwitchBlock jsRepeatBlock jsDestructuringBlock jsDestructuringArray jsObject jsBlock jsModuleGroup

set termguicolors     # enable true colors support
colorscheme ayu

hi clear Conceal
hi Conceal ctermbg=NONE ctermfg=LightCyan 

autocmd! FileType * RainbowParentheses
g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

# IndentLine {{
g:indentLine_char = '▏'
g:indentLine_first_char = '▏'
g:indentLine_showFirstIndentLevel = 1
g:indentLine_defaultGroup  = 'SpecialKey'
#  }}
