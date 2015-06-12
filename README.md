# vimux-composer

## Introduction

Vimux-composer is designed to speed up your development workflow by providing
commands to run the most relevant composer actions on the current project.

It uses tmux's scriptability to send commands to a chosen pane in your
tmux session.

## Requirements

- Vim running inside tmux session
- Installed plugin: [vimux](https://github.com/benmills/vimux)

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

- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/dsaenztagarro/zftool ~/.vim/bundle/zftool`
- [Vundle](https://github.com/gmarik/vundle)
  - Add `Bundle 'https://github.com/dsaenztagarro/zftool'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  - Add `NeoBundle 'https://github.com/dsaenztagarro/zftool'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - Add `Plug 'https://github.com/dsaenztagarro/zftool'` to .vimrc
  - Run `:PlugInstall`

## License

Copyright (c) David Saenz Tagarro.  Distributed under the same terms as Vim itself.
See `:help license`.
