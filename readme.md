# Information about plugins, addons and mac software.
This repository contains:
- linked dotfiles.
- list of my most useful mac software including plugins and addons.
- most useful commands and shortcuts.

The dotfiles are being symlinked using [stow](https://www.gnu.org/software/stow/manual/stow.html) 
as described in [this blog entry](https://tamerlan.dev/how-i-manage-my-dotfiles-using-gnu-stow/).

In short:
1. create new `~/.dotfiles/a/b/some_config.conf` that mirrors **the same file structure as in home directory**
2. `cd ~/.dotfiles/` & `stow . `
automatically links files into home directory


# Configs
## [rectangle](https://rectangleapp.com)
Move and resize windows in macOS using keyboard shortcuts or snap areas.

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
Settings followed on most party by [this video](https://www.youtube.com/watch?v=U-omALWIBos) and 
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

## Shell
For aliases, settings and functions, I have three different files:
1. `.zshrc` main run commands for my zsh terminal. This has the least manual configuration, except for calling (2.) and (4.).
2. `.bash_aliases` main configuration file for all aliases and shortcuts I am using. Executes (3.)
3. `.watson_aliases` only configurations and functions for Cl tool watson for time tracking.
3. `.bash_mac`(hidden) software and user specific config file. Is stored in a non-public cloud service.

# Mac Software
Apart from configs that are stored here, I use some software without saved configs, such as:

## [MailMate](https://freron.com)
IMAP email client for writing emails in markdown.

## [Fantastical](https://flexibits.com/fantastical)
Calendar app.

## [Obsidian](https://obsidian.md/)
notes in markdown. Notes themselves are stored in non-public cloud service.

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

## [Vivaldi](https://vivaldi.com/)
Chromium based browser with the following addons:

### [Vimium](https://github.com/philc/vimium)  
- `H` Go back in history
- `T` Search through open tabs
- `f` Show short cuts for links
- `f + shift + <short cut>` open short cut in new tab
- `yy` copies current URL to clipboard

### [Dark Reader](https://darkreader.org/)
protects my eyes.

### [Notifier for GitHub](https://github.com/sindresorhus/notifier-for-github)
notifies for any repositories that you are watching. Also from organizations that don't allow e-mail notifications.

## [iterm2](https://iterm2.com/)
terminal for mac.
Including the following tools:

### [Lazy Git](https://github.com/jesseduffield/lazygit)  
- `LazyGit` to start

### [Oh my zsh](https://ohmyz.sh)  
- `take <directory_name>` Creates <directory_name> and changes directory.

### [imgcat](https://apple.stackexchange.com/questions/256322/how-to-install-imgcat-on-iterm2)  

### [Watson](https://github.com/TailorDev/Watson)  
CLI to track time
- [blog entry](https://elijahmanor.com/blog/watson-tmux)
- [official documentation](https://tailordev.github.io/Watson/user-guide/commands/)


## [AppCleaner](https://freemacsoft.net/appcleaner/)
AppCleaner is a small application which allows you to thoroughly uninstall unwanted apps.

## [Zotero](https://www.zotero.org)
Collect, organize, and annotate research. Good and short video tutorial can be found 
[here](https://www.youtube.com/watch?v=JG7Uq_JFDzE)

### Addons
- [Zotero Connector for Chromium Browser](https://chromewebstore.google.com/detail/zotero-connector/ekhagklcjbdpajgpjgmbionohlpdbjgc?hl=en)
- [Better BibTeX](https://retorque.re/zotero-better-bibtex/)
