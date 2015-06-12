" The "Vim ZFTool" plugin provides you with ZFTool commands
"
" Author:  dsaenztagarro
" URL:     https://github.com/dsaenztagarro/ZFTool.vim
" Version: 0.1
" ----------------------------------------------------------------------------

if exists('g:loaded_vimux_composer') || &cp
  " finish
endif
let g:loaded_vimux_composer = 1

" Utility Functions {{{
function RunWithVimux(cmd)
  if exists('$TMUX')
    if exists(':VimuxRunCommand')
      call VimuxRunCommand(a:cmd)
    else
      echo 'ERROR: Missing vim plugin Vimux'
    endif
  else
    echo 'ERROR: Required running inside TMUX session'
  endif
endfunction!
" }}}
" Interface {{{
function! ComposerSelfUpdate()
  call RunWithVimux('composer self-update')
endfunction

function! ComposerInstall()
  call RunWithVimux('composer install')
endfunction

function! ComposeRUpdate()
  call RunWithVimux('composer update')
endfunction
" }}}
" Commands {{{
command! ComposerSelfUpdate call ComposerSelfUpdate()
command! ComposerInstall call ComposerInstall()
command! ComposerUpdate call ComposerUpdate()
" }}}
