# Information about plugins, addons and mac software.

This repository contains:
- linked dotfiles (mostly configs).
- list of my most useful mac software including plugins and addons.
- most useful commands and shortcuts (though some are also in cheatsheet repo).

The dotfiles are being symlinked using [stow](https://www.gnu.org/software/stow/manual/stow.html) 
as described in [this blog entry](https://tamerlan.dev/how-i-manage-my-dotfiles-using-gnu-stow/).

In short:
1. create new `~/.dotfiles/a/b/some_config.conf` that mirrors **the same file structure as in home directory**
2. `cd ~/.dotfiles/` & `stow . `
automatically links files into home directory.


# Mac Software

## [rectangle](https://rectangleapp.com)
Move and resize windows on macOS using keyboard shortcuts or snap areas.

## [karabiner](https://karabiner-elements.pqrs.org/)
Stores custom keyboard shortcuts and button remappings.

## [linearmouse](https://linearmouse.app/)
Store custom mouse configurations in per-device settings.

## [MailMate](https://freron.com)
IMAP email client for writing emails in Markdown.

## [Fantastical](https://flexibits.com/fantastical)
Calendar app.

## [Obsidian](https://obsidian.md/)
notes in Markdown. Notes themselves are stored in non-public cloud service.

### Shortcuts
- `ctrl + o` open quick switcher

### Links
`[This](<file#first headline##second headline>)` is a link with spaces

### Plugins
- [Excalidraw](https://github.com/zsviczian/obsidian-excalidraw-plugin)
- [Kanban](https://github.com/mgmeyers/obsidian-kanban)
- [Reminder](https://github.com/uphy/obsidian-reminder)
- [Advanced Slides](https://github.com/MSzturc/obsidian-advanced-slides)
- [Mark-When](https://github.com/mark-when/obsidian-plugin/tree/main)
- [Vimrc Support](https://github.com/esm7/obsidian-vimrc-support)

## [AppCleaner](https://freemacsoft.net/appcleaner/)
AppCleaner is a small application which allows you to thoroughly uninstall unwanted apps.

## [Zotero](https://www.zotero.org)
Collect, organize, and annotate research. Good and short video tutorial can be found 
[here](https://www.youtube.com/watch?v=JG7Uq_JFDzE). Including following addons

### [Zotero Connector for Chromium Browser](https://chromewebstore.google.com/detail/zotero-connector/ekhagklcjbdpajgpjgmbionohlpdbjgc?hl=en)
Connects Zotero to Chromium Browser.

### [Better BibTeX](https://retorque.re/zotero-better-bibtex/)

## [Vivaldi](https://vivaldi.com/)
Chromium based browser with the following Addons:

### [Vimium](https://github.com/philc/vimium)  
- `H` Go back in history
- `T` Search through open tabs
- `f` Show shortcuts for links
- `f + shift + <short cut>` open shortcut in new tab
- `yy` copies current URL to clipboard

### [Dark Reader](https://darkreader.org/)
protects my eyes.

### [Notifier for GitHub](https://github.com/sindresorhus/notifier-for-github)
notifies for any repositories that you are watching. Also, from organizations that don't allow e-mail notifications.

## [Terminal (kitty)](https://sw.kovidgoyal.net/kitty/)
terminal emulator for mac.
For aliases, settings and functions, I have three different files:
1. `.zshrc` main run commands for my zsh terminal. This has the least manual configuration, except for calling (2.) and (4.).
2. `.bash_aliases` main configuration file for all aliases and shortcuts I am using. Executes (3.)
3. `.watson_aliases` only configurations and functions for Cl tool watson for time tracking.
3. `.bash_mac`(hidden) software and user specific config file. Is stored in a non-public cloud service.

Includes the following tools:

### [Lazy Git](https://github.com/jesseduffield/lazygit)  
- `LazyGit` to start

### [Oh my zsh](https://ohmyz.sh)  
- `take <directory_name>` Creates <directory_name> and changes directory.

### [imgcat](https://apple.stackexchange.com/questions/256322/how-to-install-imgcat-on-iterm2)  

### [Watson](https://github.com/TailorDev/Watson)  
CLI to track time
- [blog entry](https://elijahmanor.com/blog/watson-tmux)
- [official documentation](https://tailordev.github.io/Watson/user-guide/commands/)

## Nvim
Check [separate readme file](.config/nvim/readme.md)

## [Tmux (Version 3.2a)](https://github.com/tmux/tmux/wiki)  
Settings followed mostly on [this video](https://www.youtube.com/watch?v=U-omALWIBos) and 
are stored in `.tmux.conf`.
- `ctrl + b` leader

### Tmux Configs
`<leader> = ctrl + b`

- `<leader> + s` - show all sessions
- `<leader> + w` - show all windows
- `<leader> + $` - rename session
- `<leader> + z` - maximize pane
- `<leader> + [` - enter visual mode in terminal
- `<leader> + {` - swap panes
- `<leader> + L` - switch to last attached session

### Plugins
#### [Tmux Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm)
#### tmux-resurrect
- `<leader> + ctrl + s` save sessions
- `<leader> + ctrl + r` restore sessions
