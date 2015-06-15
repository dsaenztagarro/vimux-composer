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

if !exists("g:vimux_composer_use_ctags")
  let g:vimux_composer_use_ctags=0
endif

" Utils {{{
function! ComposerCommand(action)
	call VimuxRunCommand('php composer.phar ' . a:action)
endfunction

function! CTagsVendor()
  if g:vimux_composer_use_ctags
    call VimuxRunCommand('ctags -R -f tags.vendor vendor')
  endif
endfunction
" }}}
" Interface {{{
function! ComposerSelfUpdate()
  call ComposerCommand('self-update')
endfunction

function! ComposerInstall()
  call ComposerCommand('install')
  call CTagsVendor()
endfunction

function! ComposerUpdate()
  call ComposerCommand('update')
  call CTagsVendor()
endfunction
" }}}
" Commands {{{
command! ComposerSelfUpdate call ComposerSelfUpdate()
command! ComposerInstall call ComposerInstall()
command! ComposerUpdate call ComposerUpdate()
" }}}
