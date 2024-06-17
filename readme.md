# Information about plugins, addons and mac software.
This repository contains the configs, descriptions and 
This repository contains information about the most important plugins, addons and other software I'm using on an almost daily basis.
In each section, there is a `readme.md` with a brief explanation about the software, followed by the (for me) most important shortcuts or features.

These files are being symlinked using [stow](https://www.gnu.org/software/stow/manual/stow.html) 
as described in [this blog entry](https://tamerlan.dev/how-i-manage-my-dotfiles-using-gnu-stow/)


# Configs
## [karabiner](https://karabiner-elements.pqrs.org/)
Stores custom keyboard shortcuts and button remappings.

## [linearmouse](https://linearmouse.app/)
Store custom mouse configurations in per-device settings.

## Nvim
Check [separate readme file](.config/nvim/readme.md)

## Git
- `.gitconfig`
- `.gitignore_global` Ignore some directories in all repos.

## [Tmux (Version 3.2a)](https://github.com/tmux/tmux/wiki)  
Settings followed on most party by [this video](https://www.youtube.com/watch?v=U-omALWIBos) and are stored in `.tmux.conf`
- `ctrl + b` leader

### Tmux Configs
- `ctrl + b + s` - show all sessions
- `ctrl + b + w` - show all windows
- `ctrl + b + $` - rename session
- `ctrl + b + z` - maximize pane
- `ctrl + b + [` - enter visual mode in terminal
- `ctrl + b + {` - swap panes
- `ctrl + b + L` - switch to last attached session

### Plugins
#### [Tmux Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm)
#### tmux-resurrect
- `ctrl + b + ctrl + s` save sessions
- `ctrl + b + ctrl + r` restore sessions


## Bash
For bash aliases, settings and functions, I have three different files:
1. `.zshrc` main run commands for my zsh terminal. This has the least manual configuration, except for calling (2.) and (4.).
2. `.bash_aliases` main configuration file for all aliases and shortcuts I am using. Executes (3.)
3. `.watson_aliases` only configurations and functions for Cl tool watson for time tracking.
3. `.bash_mac`(hidden) software and user specific config file. Is stored in a non-public cloud service.

# Mac Software
Apart from configs that are stored here, I use some software without saved configs, such as:

## [MailMate](https://freron.com)
IMAP email client for writing emails in markdown.

## [Fantastical](https://flexibits.com/fantastical)
Calendar app

## [Obsidian](https://obsidian.md/)
notes in markdown. Notes themselves are stored in non-public cloud service. Including Addons:
- [Excalidraw](https://github.com/zsviczian/obsidian-excalidraw-plugin)
- [Kanban](https://github.com/mgmeyers/obsidian-kanban)
- [Reminder](https://github.com/uphy/obsidian-reminder)
- [Advanced Slides](https://github.com/MSzturc/obsidian-advanced-slides)

## [Vivaldi](https://vivaldi.com/)
Chromium based browser with the following addons:

### [Vimium](https://github.com/philc/vimium)  
- `H` Go back in history
- `T` Search through open tabs
- `f` Show short cuts for links
- `f + shift + <short cut>` open short cut in new tab
- `yy` copies current URL to clipboard

### [Dark Reader](https://darkreader.org/)
protect my eyes 

### [Notifier for GitHub](https://github.com/sindresorhus/notifier-for-github)
notifies for any repositories that you are watching. Also from organizations that don't allow e-mail notifications.

## [iterm2](https://iterm2.com/)
terminal for mac.
Including the following tools

### [Lazy Git](https://github.com/jesseduffield/lazygit)  
- `LazyGit` to start

### [Oh my zsh](https://ohmyz.sh)  

### [imgcat](https://apple.stackexchange.com/questions/256322/how-to-install-imgcat-on-iterm2)  

### [Watson](https://github.com/TailorDev/Watson)  
- [blog entry](https://elijahmanor.com/blog/watson-tmux)
- [official documentation](https://tailordev.github.io/Watson/user-guide/commands/)


