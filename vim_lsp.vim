vim9script
# Snippets
# Add snippets :UltiSnipsEdit
# var snippetDir = $VIM_CONFIG .. "/snippets"
# g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = snippetDir 
# g:UltiSnipsSnippetDirectories = [snippetDir]
# g:UltiSnipsExpandTrigger = "<c-m>" 
# g:UltiSnipsJumpForwardTrigger = "<s-tab>"

#Lsp
nnoremap <silent> <C-m> :LspGotoDefinition<CR>
cnoreabbrev ra LspRename
cnoreabbrev fr LspPeekReferences  
cnoreabbrev gd LspHover
 
# if has('win32')
#   autocmd! BufWritePre * silent :LspFormat | silent! :s/\r\(\n\)/\1/g
# else
#   autocmd! BufWritePre * silent :LspFormat
# endif
 
#Options
var lspOpts = {
      \ autoHighlight: true,
      \ omniComplete: true,
      \ useBufferCompletion: false,
      \ autoComplete: true,
      \ snippetSupport: false,
      \ ultisnipsSupport: false,
      \ showDiagWithVirtualText: true,
      \ diagVirtualTextAlign: 'after',
      \ showDiagOnStatusLine: true,
      \ showInlayHints: true,
      \ noNewlineInCompletion: true,
      \ outlineOnRight: true,
      \ ignoreMissingServer: true, 
      \ highlightDiagInline: true,
      \ showDiagWithSign: true,
      \ diagSignErrorText: "E:",
      \ diagSignInfoText: "I:",
      \ diagSignHintText: "H:",
      \ diagSignWarningText: "W:",
      \ filterCompletionDuplicates: true,
      \ }

# autocmd VimEnter * call LspOptionsSet(lspOpts)

# # Higlight pum options
augroup LspSetup
  au!
  au User LspAttached set completeopt-=noselect
augroup END

# npm i -g vim-language-server
# npm i -g intelephense
# npm i -g @vue/language-server
# npm i -g typescript
# npm i -g vscode-json-languageserver
# npm i -g bash-language-server
# npm i -g vscode-html-languageserver-bin
# sudo snap install marksman 
# sudo apt install clangd

# var file = $VIM_CONFIG .. '/lsp-config.json'
# var config = json_decode(join(readfile(file), "\n"))
# autocmd VimEnter * call LspAddServer(config.servers)

var lspServers = [
      \ {
      \ name: 'typescriptls',
      \ filetype: ['javascript', 'typescript'],
      \ path: '/usr/local/bin/typescript-language-server',
      \ args: ['--stdio']
      \ },
      \ {
      \ name: 'pythonls',
      \ filetype: 'python',
      \ path: '/usr/local/bin/pyls',
      \ args: ['--check-parent-process', '-v']
      \ }
      \ ]
autocmd VimEnter * call LspAddServer(lspServers)

# ALE
packloadall
g:ale_linters = {'javascript': ['eslint', 'tsserver']}
g:ale_fixers = {'javascript': ['eslint']}
g:ale_completion_enabled = 1
g:ale_lint_on_text_changed = 'never'
g:ale_lint_on_insert_leave = 0
g:ale_lint_on_enter = 0

nnoremap <silent> <C-m> :ALEGoToDefinition<CR>
