# Information about plugins, addons etc.
This file shows most of the important plugins, addons I am using on an almost daily basis.
Followed by a brief explanation what the software does, I listed the most important shortcuts 
I find useful.

These files are being symlinked using [stow](https://www.gnu.org/software/stow/manual/stow.html) 
as described in [this blog entry](https://tamerlan.dev/how-i-manage-my-dotfiles-using-gnu-stow/)

## Nvim Plugins

partly following [this guide](https://www.playfulpython.com/configuring-neovim-as-a-python-ide/)

### colorscheme  
for color schemes.

### [gp.nvim](https://github.com/Robitx/gp.nvim) (OpenAI API)
- `:GpChatNew` - opens new gpt window
- `:GpNextAgent` - cycles through agents
- `:GpChatFinder` - opens finder 
- `:GpChatToggle` - opens finder 
- `:GpImage` - opens Dall-E  

### markdown-preview:  
sends markdown files to browser where it can be viewed.
`:MarkdownPreview` opens `.md` file in browser

### [mini surround](https://github.com/echasnovski/mini.surround):  
- `sa + )` add () surroundings (both in visual and motion mode)
- `sd + )` delete () surroundings.

### nvim-comment:
quick commenting: `gcc` - one line. `gc` - multiple lines

### [nvim-cmp](https://github.com/hrsh7th/nvim-cmp):  
Used for auto-completion

### nvim-lspconfig:  
Language Server Protocol (LSP) using `pyright`.
Among other things, responsible for:
- code diagnostics.
- code completion.
- syntax highlighting.
- warnings and errors.
- refactoring routines.  

Commonly used shortcuts:
- `<leader> rn` - refactor variable
- `<leader> e` - show advanced diagnostics (errors)

### nvim-tree:  
directory tree visualization while browsing files in nvim.
`a test.py` creates new file "test". 
`a /test` creates folder "test".
`c` copy file.
`p` paste copied file (duplicating).

### nvim-ufo:  
folding.
- `zM`- close all folds
- `zR`- open all folds
- `za` - open / close current fold
- `zA` - open current fold and all within
- `zm`- unfold one level
- `zO` - unfold current scope completely
- `zo` - unfold current scope one level
- `zC`


### null-ls:  
Linting & Formatting. Uses `ruff` as linter and `black` for formatting

### tmux-lua:  
Tmux installation for multiplexing / sessions.

### telescope:  
fuzzy finder (<leader> ff)

### treesitter:
Better syntax highlighting than regex-based highlighting.

### vim-jukit:  
editting and creating juypter notebooks.
    - `<leader>co` Creating new cells
    - `<leader>np` Convert file from .ipynb to .py and vice versa
    - `<leader>os` send to output: 
    - `<leader> J` - Jump to next cell below
    - `<leader> K` - Jump to previous cell above
    - `Shift Enter`- send current line to output split
    - `<leader> ct` - create new markdown cell below
    - `<leader> cc` - execute all cells until current one
    - `<leader> all` - execute all cells
    - `<leader> cj` - move cell one down
#### windows
- `<leader> od` Close output window

### vimtex:  
latex compiler. best to be used together with reader that supports real time building.
`\ll` building (activating automatic compilation when saving)


## iterm2

###[Lazy Git](https://github.com/jesseduffield/lazygit)  
    - `LazyGit` to start

### [Oh my zsh](https://ohmyz.sh)  

### [imgcat](https://apple.stackexchange.com/questions/256322/how-to-install-imgcat-on-iterm2)  

### [Watson](https://github.com/TailorDev/Watson)  
- [blog entry](https://elijahmanor.com/blog/watson-tmux)
- [official documentation](https://tailordev.github.io/Watson/user-guide/commands/)

### [Tmux](https://github.com/tmux/tmux/wiki)  
Settings followed on most party by [this video](https://www.youtube.com/watch?v=U-omALWIBos)
`ctrl + b` leader

#### Tmux Configs
- `ctrl + b + s` - show all sessions
- `ctrl + b + w` - show all windows
- `ctrl + b + $` - rename session
- `ctrl + b + z` - maximize pane
- `ctrl + b + [` - enter visual mode in terminal
- `ctrl + b + {` - swap panes
- `ctrl + b + L` - switch to last attached session

#### Plugins
- [Tmux Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm)
- tmux-resurrect
    - `ctrl + b + ctrl + s` save sessions
    - `ctrl + b + ctrl + r` restore sessions


## Browser Addons

### [Vimium](https://github.com/philc/vimium)  
    - `H` Go back in history
    - `T` Search through open tabs
    - `f` Show short cuts for links
    - `f + shift + <short cut>` open short cut in new tab

## Neovim

- `*` search forward of word beneath cursor
- `f<char>` put cursor on next character
    - `;` repeat operation
    - `:` repeat operation in opposite direction
