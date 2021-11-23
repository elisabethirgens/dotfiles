# my dotfiles ⚙️

Starting to git me some (version) control of my dotfiles and settings.

## Symlink files 🏹

```shell
# Make symbolic links from files in this repo to home
ln -s ~/proj/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/proj/dotfiles/.npmrc ~/.npmrc
ln -s ~/proj/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/proj/dotfiles/zsh/.zprofile ~/.zprofile
```

## Manage VS Code settings and extensions

```shell
# Symlink settings for VS Code
ln -s ~/proj/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

While it is possible to sync settings for VS Code with an account, I didn’t want yet another account for that — and went with a manual approach of maintaining a list of potentially interesting extentions in this repo. Using these commands to export and import from one machine to another.

```shell
# Create a list of current extensions
code --list-extensions >> vscode/extensions.txt
```

```shell
# Pipe a list into xargs and install those
cat vscode/extensions.txt | xargs -L 1 code --install-extension
```

---

## Improvements

- Set up `.zshrc` so user name doesn't need to be hard coded