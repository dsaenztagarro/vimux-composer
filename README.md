# vimux-composer

## Introduction

Vimux-composer is designed to speed up your development workflow by providing
commands to run the most relevant composer actions on the current project.

It uses tmux's scriptability to send commands to a chosen pane in your
tmux session.

## Dependencies

This plugin depends on [vimux][1]. It also makes the assumption that you're 
using tmux.

## Usage

Normal Mode Commands:

- ComposerSelfUpdate - Composer self update
- ComposerInstall    - Composer install
- ComposerUpdate     - Composer update

You can easily map them as needed like this:

    map <Leader>cc :ComposerSelfUpdate<CR>
    map <Leader>ci :ComposerInstall<CR>
    map <Leader>cu :ComposerUpdate<CR>

## Installation

Use your plugin manager of choice.

- [Pathogen][2]
  - `git clone https://github.com/dsaenztagarro/vimux-composer ~/.vim/bundle/vimux-composer`
- [Vundle][3]
  - Add `Bundle 'https://github.com/dsaenztagarro/vimux-composer'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle][4]
  - Add `NeoBundle 'https://github.com/dsaenztagarro/vimux-composer'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug][5]
  - Add `Plug 'https://github.com/dsaenztagarro/vimux-composer'` to .vimrc
  - Run `:PlugInstall`

## License

Copyright (c) David Saenz Tagarro.  Distributed under the same terms as Vim itself.
See `:help license`.

[1]: https://github.com/benmills/vimux
[2]: https://github.com/tpope/vim-pathogen
[3]: https://github.com/gmarik/vundle
[4]: https://github.com/Shougo/neobundle.vim
[5]: https://github.com/junegunn/vim-plug
