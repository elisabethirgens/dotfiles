# my dotfiles ⚙️

Starting to git me some (version) control of my dotfiles and settings.

## symlinks

- [ ] todo: make a shell script of these 👇

```shell
ln -s ~/proj/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/proj/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/proj/dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/proj/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

## Manage VS Code extensions

```shell
code --list-extensions >> extensions.txt
```

Todo: decide on a workflow with some manual control for extensions. This will create a list that can be piped into xargs to run `code --install-extension`. A bit manual, but not sure I want auto syncing between machines? 🤔

---

## Improvements

- Set up `.zshrc` so user name doesn't need to be hard coded