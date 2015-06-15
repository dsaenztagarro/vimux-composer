# vimux-composer

## Introduction

Vimux-composer is designed to speed up your development workflow by providing
commands to run the most relevant [composer][1] actions on the current project.

It uses tmux's scriptability to send commands to a chosen pane in your
tmux session.

## Dependencies

This plugin depends on [vimux][2]. It also makes the assumption that you're 
using tmux.

## Usage

The function `ComposerCommand(cmd, args)` is the core of vimux-composer. It will
run a composer command in a vimux window:

    :call ComposerCommand("run-script")

    # => php composer.phar run-script


There are also a number of pre-defined [commands](#commands). You can easily map
them as needed like this:

    map <Leader>cc :ComposerSelfUpdate<CR>
    map <Leader>ci :ComposerInstall<CR>
    map <Leader>cu :ComposerUpdate<CR>

## Commands

* ComposerSelfUpdate 
* ComposerInstall    
* ComposerUpdate     

## Installation

Use your plugin manager of choice.

- [Pathogen][3]
  - `git clone https://github.com/dsaenztagarro/vimux-composer ~/.vim/bundle/vimux-composer`
- [Vundle][4]
  - Add `Bundle 'https://github.com/dsaenztagarro/vimux-composer'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle][5]
  - Add `NeoBundle 'https://github.com/dsaenztagarro/vimux-composer'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug][6]
  - Add `Plug 'https://github.com/dsaenztagarro/vimux-composer'` to .vimrc
  - Run `:PlugInstall`

## License

Copyright (c) David Saenz Tagarro.  Distributed under the same terms as Vim itself.
See `:help license`.

[1]: https://getcomposer.org/
[2]: https://github.com/benmills/vimux
[3]: https://github.com/tpope/vim-pathogen
[4]: https://github.com/gmarik/vundle
[5]: https://github.com/Shougo/neobundle.vim
[6]: https://github.com/junegunn/vim-plug
