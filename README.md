Setup :
===
<!-- TOC -->

- [Terminal](#terminal)
- [Vim](#vim)
    - [~/.vim/vimrc](#vimvimrc)
- [Tmux](#tmux)
    - [~/.tmux.conf](#tmuxconf)
- [Zsh](#zsh)
    - [~/.zshrc](#zshrc)
- [VS-Code](#vs-code)
    - [settings.json](#settingsjson)

<!-- /TOC -->
# Terminal
* Make sure a Powerline compatible font is used.
    * [Fantasque Sans Mono](https://github.com/belluzj/fantasque-sans)
* Set colors in the Terminal.

# Vim

* Version 8.0 or higher.
* To install on Ubuntu 16.04 :
```bash
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update && sudo apt upgrade
```

Since Vim 8.0 there is a build-in plugin loader.
A path for a sample plugin:
>"~/.vim/pack/{user-name}/start/sample-plugin"

* Plugins :
    * [Vim-Airline](https://github.com/vim-airline/vim-airline ):
    * [Vim-Airline-Themes](https://github.com/vim-airline/vim-airline-themes)

```bash
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
```

## ~/.vim/vimrc

```vim
" Use Vim in the 21th Century
set nocompatible
" Encoding
scriptencoding utf-8
set encoding=utf-8
" Tab -> 4 spaces
set tabstop=4 softtabstop=-1 expandtab shiftwidth=0
" Show some whitespace
set listchars=eol:¬,tab:..,trail:_,extends:>,precedes:<,nbsp:~
set list
" Set relative linenumbers for easier naigation
set number relativenumber
" Easier indentation
filetype plugin indent on
" Syntax highlighting
syntax on
" Enable backspace
set backspace=2
" Better search
set ignorecase
set smartcase
" Auto indentation
set autoindent
set smartindent
" Show current line
set cursorline
" faster scrolling
set ttyfast
" Show last two keys pressed
set laststatus=2
" Highlighted search C-L to unhighlight
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
" Plugins
" --------
" Vim Airline config
let g:airline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "murmur"
```

# Tmux

* Plugins:
    * [Tmux-Themepack](https://github.com/jimeh/tmux-themepack)

```bash
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
```

## ~/.tmux.conf
```bash
# Use full color term
set -g default-terminal "screen-256color"
# Set border colors
set-option -g pane-border-fg colour235
set-option -g pane-active-border-fg colour240
set-window-option -g clock-mode-colour colour64
set -g set-titles on
set -g terminal-overrides "*256*:XT:Tc"
setw -g aggressive-resize on
# reset prefix from C-b to C-a
unbind C-b
set-option -g prefix C-a
bind C-a send-prefix
# Make windows split
bind-key v split-window -v
bind-key s split-window -h
# Vim movement
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
# Plugins
# -------
# Tmux Themepacks
source-file "${HOME}/.tmux-themepack/powerline/double/blue.tmuxtheme"
```

# Zsh

Install zsh:
```bash
sudo apt install zsh
```

* Plugins :
    * [ Oh-My-Zsh ](https://github.com/robbyrussell/oh-my-zsh)
        * [ Calc ](https://github.com/arzzen/calc.plugin.zsh)
    * [ alien ](https://github.com/eendroroy/alien)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/arzzen/calc.plugin.zsh.git ~/.oh-my-zsh/custom/plugins/calc

git clone https://github.com/eendroroy/alien.git ~/.alien
cd ~/.alien
git submodule update --init --recursive
```

## ~/.zshrc
```zsh
export ZSH=/home/felinchen/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-extras
  calc
  colored-man-pages
)
source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# alien stuff
source ~/.alien/alien.zsh
export ALIEN_THEME="red"
```

# VS-Code

* Plugins
    * An Old Hope Theme
    * Auto Close Tag
    * Auto Rename Tag
    * AutoFileName
    * C/C++
    * Git History
    * Git HistoryDiff
    * Git Indicators
    * indent-rainbow
    * Markdown All In One
    * Markdown TOC
    * Material Icon Theme
    * Native Debug
    * Partial Diff
    * PHP Intelephense
    * PlatformIO IDE
    * Python
    * Rainbow Brackets
    * Rust (rls)
    * Spell Right

## settings.json
```json

    "editor.fontFamily": "Fantasque Sans Mono",
    "editor.fontSize": 14,
    "editor.formatOnSave": true,
    "editor.formatOnPaste": true,
    "editor.letterSpacing": 0.5,
    "editor.lineNumbers": "relative",
    "editor.renderWhitespace": "all",
    "editor.rulers": [
        80,
        120
    ],
    "editor.wordWrap": "wordWrapColumn",
    "editor.wordWrapColumn": 120,
    "files.autoSave": "afterDelay",
    "files.trimTrailingWhitespace": true,
    "python.autoComplete.addBrackets": true,
    "spellright.language": "English",
    "terminal.integrated.fontFamily": "Fantasque Sans Mono",
    "terminal.integrated.fontSize": 14,
    "vim.overrideCopy": false,
    "vim.cmdLineInitialColon": true,
    "vim.hlsearch": true,
    "vim.statusBarColors": {},
    "vim.statusBarColorControl": true,
    "vim.searchHighlightColor": "rgba(150, 150, 255, 0.3)",
    "vim.smartcase": true,
    "window.zoomLevel": 0,
    "workbench.tips.enabled": false,
    "workbench.colorTheme": "An Old Hope",
    "workbench.startupEditor": "newUntitledFile",
    "vim.handleKeys": {
        "<C-d>": true,
        "<C-c>": false,
        "<C-v>": false
    },
    "html.autoClosingTags": true,
    "html.format.enable": true,
    "html.format.extraLiners": "head, body, /html",
    "php.suggest.basic": false,
    "spellright.documentTypes": [
        "markdown",
        "latex",
        "plaintext",
        "xml",
        "html"
    ],
    "workbench.iconTheme": "material-icon-theme",
}
```

