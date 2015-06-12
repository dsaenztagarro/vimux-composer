" The "Vim ZFTool" plugin provides you with ZFTool commands
"
" Author:  dsaenztagarro
" URL:     https://github.com/dsaenztagarro/ZFTool.vim
" Version: 0.1
" ----------------------------------------------------------------------------

if exists('g:loaded_vimux_composer') || &cp
  finish
endif
let g:loaded_vimux_composer = 1

" Interface {{{
function! ComposerSelfUpdate()
  call VimuxRunCommand('composer self-update')
endfunction

function! ComposerInstall()
  call VimuxRunCommand('composer install')
endfunction

function! ComposeRUpdate()
  call VimuxRunCommand('composer update')
endfunction
" }}}
" Commands {{{
command! ComposerSelfUpdate call ComposerSelfUpdate()
command! ComposerInstall call ComposerInstall()
command! ComposerUpdate call ComposerUpdate()
" }}}
