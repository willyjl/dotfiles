# Dotfiles

## Neovim 

- [Install Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Install Vim Plug on Neovim](https://github.com/junegunn/vim-plug#neovim)
- Link neovim config:

```
ln -s ~/dotfiles/.config ~/.config
```

- Inside neovim, execute `PlugInstall` to download plugins.
- Trigger FZF installation through Ctrl+z shortcut.

## Zsh

- Install Zsh
- Link .zshrc to home directory

```
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

- [Clone powerlevel10k oh-my-zsh theme](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

## Ruby Related

- [Install rbenv](https://github.com/rbenv/rbenv#basic-github-checkout)
- [Add ruby-build](https://github.com/rbenv/ruby-build#installation)

## Configured VIM Shortcuts

- (<C-n>) Show NERDTree
- (<A-]>) Next tab
- (<A-[>) Prev tab

### Visual Mode

- (gc) Comment
- (g<) Uncomment

### NERDTree

- (I) Show hidden file
