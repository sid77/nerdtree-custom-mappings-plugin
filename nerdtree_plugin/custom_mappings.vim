" ============================================================================
" File:        custom_mappings.vim
" Description: plugin for NERDTree that adds custom mappings
" Maintainer:  Marco Bonetti <sid77 at slackware dot it>
" Last Change: 21 Feb 2018
" License:     BSD 2-Clause License
" ============================================================================
if exists("g:loaded_nerdtree_custom_mappings_plugins")
  finish
endif
let g:loaded_nerdtree_custom_mappings_plugins = 1

call NERDTreeAddKeyMap({
      \ 'key': '<Space>',
      \ 'callback': "NERDTreeCustomMapActivateNode",
      \ 'quickhelpText': 'activate current node' })

" FUNCTION: NERDTreeCustomMapActivateNode()
" invokes the keymap for g:NERDTreeMapActivateNode :O)
function! NERDTreeCustomMapActivateNode()
  call nerdtree#ui_glue#invokeKeyMap(g:NERDTreeMapActivateNode)
endfunction
