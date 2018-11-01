
UNIX settings
=============

> by bjk

These settings are just one choice of the several possible options.
*I like them!* This is the only reason why I use these settings.

## Before reading..

- All settings belong to CLI/CUI. **NOT** GUI.
- I use macOS and Linux(Ubuntu), and sometimes they have different settings.
- Although title of this document is *UNIX settings*, some of them can be applied even on Windows.
- Don't apply them on very slow machines.

## Terminal

> Here are environments and configurations of terminal programs.

### Tools

- For macOS
    - [iTerm2](https://www.iterm2.com) : Many better features than default terminal
    - [brew](https://brew.sh) : Package manager. **ruby** required.

- For gnome
    - I'll use default one.

- Else..
    - I have never used yet.

### Colorscheme

- Whatever colorscheme you use, Keep it mind: `xterm-256color` matters.

- If there is no default *solarized* colorscheme...
    - Download on [Ethan's website](https://ethanschoonover.com/solarized/)
    - I think it exists on default schemes of Ubuntu terminal

- *Solarized dark* recommended

- supports **PuTTY**

Don't try if the terminal poorly supports it. (e.g. macOS default terminal)

### powerline fonts

Font is really important on these settings!
Installation guides on [github powerline/fonts](https://github.com/powerline/fonts)

*UbuntuMono* or *D2Coding* recommended, as you consider the single font of them.

## Shell

*Shell* doesn't include *Powershell*

### zsh

- Installation
    - macOS : `brew update` &rarr; `brew install zsh`
    - Ubuntu : `sudo apt install zsh`

- Change default shell
    - `chsh -s 'which zsh'` &larr; Grave accent(&#96;), **NOT** apostrephe(&#39;)
    - More safely, enter the one of the list of `which zsh`

### Oh My Zsh

- Installation command on [Oh My Zsh website](https://ohmyz.sh)
    - `curl` recommended

- Theme
    - [List of themes](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes)
    - `ZSH_THEME="agnoster"` in `~/.zshrc`
    - ...or download themes into `~/.oh-my-zsh/themes/`
    - **Font/Colorscheme settings really matter** depending on your theme!
    - For better supports in `tmux`, add `export TERM=xterm-256color` in `~/.zshrc`

### Oh My Zsh Plugins

- Change/Add plugin names in `plugins` of `~/.zshrc`

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - Installation guide for Oh My Zsh is on the repository
    - Add `ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'` in `~/.zshrc` if you use *Solarized Dark* theme

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    - Installation guide is in `INSTALL.md` of the repository
    - **MAY OPERATE INCORRECTLY** depending on the version of shell

## Vim

I can't use Emacs.

### Vundle

- Installation
    - `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

- Usage
    - `:PluginList` : lists configured plugins
    - `:PluginInstall` : installs plugins
    - `:PluginUpdate` : updates them
    - `:PluginClean` : confirms removal of unused plugins

About more informations, see `README.md` on [VundleVim github](https://github.com/VundleVim/Vundle.vim).

### Vim plugins

- The list of favorite plugins is already in `vimrc.vimrc`
- The list of *major* plugins is in [Vim Awesome](https://vimawesome.com)

### Vim config

Please check `vimrc.vimrc` file of this repository...
Is there any way to show the contents from a distinct file on markdown?

#### Vim airline themes

I use *luna* theme. However, it may appear poorly.

On [airline-themes wiki](https://github.com/vim-airline/vim-airline/wiki/Screenshots), you can see a bunch of themes to replace.

## tmux

- **PLEASE EXTRACT DEFAULT CONFIG FILE FIRST**
    - `tmux show -g | sed 's/^/set-option -g /' > ~/.tmux.default.conf`

- `tmux source-file .tmux.conf` to apply config file

- It doesn't support *256color* on default configurations.
    - Add `export TERM=xterm-256color` in `~/.zshrc`

### tmux config

Please check `tmux.tmux.config` file of this repository...
`tpm` required!

### tpm

- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
    - Installation guide is in the repository
    - [List of Plugins](https://github.com/tmux-plugins)
    - Install : `prefix` + <kbd>I</kbd> (Capital I)
    - Update : `prefix` + <kbd>U</kbd> (Capital U)
    - Uninstall?? : keymap doesn't work in **iTerm**, so just delete both from config file and `~/.tmux/plugins/`

## Git

Most of projects I'm working with git are usually controlled by IDEs.
This means I do not use any plugins of git in CLI.

### config

- `git config --global`
    - `user.name BJKIm`
    - `user.name *privacy*@icloud.com`
    - `core.editor vim`
    - `core.autocrlf` &rarr; `true` if Windows, `false` otherwise..
