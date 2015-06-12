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

" Utils {{{
function! ComposerRunCommand(action)
	call VimuxRunCommand('php composer.phar ' . a:action)
endfunction
" }}}
" Interface {{{
function! ComposerSelfUpdate()
  call ComposerRunCommand('self-update')
endfunction

function! ComposerInstall()
  call ComposerRunCommand('install')
endfunction

function! ComposerUpdate()
  call ComposerRunCommand('update')
endfunction
" }}}
" Commands {{{
command! ComposerSelfUpdate call ComposerSelfUpdate()
command! ComposerInstall call ComposerInstall()
command! ComposerUpdate call ComposerUpdate()
" }}}
