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

if !exists("g:vimux_composer_command")
  let g:vimux_composer_command='php composer.phar config --global discard-changes true &&
    \ php composer.phar --no-interaction'
endif

if !exists("g:vimux_composer_use_ctags")
  let g:vimux_composer_use_ctags=1
endif

if !exists("g:vimux_composer_ctags_command")
  let g:vimux_composer_ctags_command='ctags -R -f tags.vendor vendor'
endif

" Utils {{{
function! ComposerCommand(action)
  let cwd = getcwd()
	call VimuxRunCommand('cd ' . cwd . ' && ' . g:vimux_composer_command . ' ' . a:action)
endfunction

function! CTagsCommand()
  if g:vimux_composer_use_ctags
    call VimuxRunCommand(g:vimux_composer_ctags_command)
  endif
endfunction
" }}}
" Interface {{{
function! ComposerSelfUpdate()
  call ComposerCommand('self-update')
endfunction

function! ComposerInstall()
  call ComposerCommand('install')
  call CTagsCommand()
endfunction

function! ComposerUpdate()
  call ComposerCommand('update')
  call CTagsCommand()
endfunction
" }}}
" Commands {{{
command! ComposerSelfUpdate call ComposerSelfUpdate()
command! ComposerInstall call ComposerInstall()
command! ComposerUpdate call ComposerUpdate()
" }}}
