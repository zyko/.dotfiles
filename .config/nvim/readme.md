# Neovim

partly following [this guide](https://www.playfulpython.com/configuring-neovim-as-a-python-ide/)

Including following Plugins:

## Plugins

### [colorscheme](https://github.com/bluz71/vim-nightfly-colors)  
for color schemes.

### [easymotion](https://github.com/easymotion/vim-easymotion)  
smoother navigation.
- `<leader> m f <char>` highlight <char> after cursor
- `<leader> m w ` highlight beginning of words after cursor


### [gp.nvim](https://github.com/Robitx/gp.nvim) (OpenAI API)
- `:GpChatNew` - opens new gpt window
- `:GpNextAgent` - cycles through agents
- `:GpChatFinder` - opens finder 
- `:GpChatToggle` - opens finder 
- `:GpImage` - opens Dall-E  

### [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
sends markdown files to browser where it can be viewed.
`:MarkdownPreview` opens `.md` file in browser.

### [mini surround](https://github.com/echasnovski/mini.surround):  
- `sa + )` add () surroundings (both in visual and motion mode).
- `sd + )` delete () surroundings (in motion mode, nothing marked).

### [nvim-comment](https://github.com/terrortylor/nvim-comment):
quick commenting:
- `gcc` comment / uncomment one line. 
- `gc` comment / uncomment multiple lines.

### [nvim-dap](https://github.com/rcarriga/nvim-dap-ui):
helps debugging

### [nvim-cmp](https://github.com/hrsh7th/nvim-cmp):  
Used for auto-completion

### [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig):  
Language Server Protocol (LSP) using `pyright`.
Among other things, responsible for:
- code diagnostics.
- code completion.
- syntax highlighting.
- warnings and errors.
- refactoring routines.  

Commonly used shortcuts:
- `<leader> rn` refactor variable
- `<leader> e` show advanced diagnostics (errors)
- `gd` go to definition
- `gr` show references

### [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
directory tree visualization while browsing files in nvim.
`a test.py` creates new file "test". 
`a /test` creates folder "test".
`c` copy file.
`y` copy file name.
`p` paste copied file (duplicating).

### [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
folding.
- `zM` close all folds
- `zR`open all folds
- `za` open / close current fold
- `zA` open current fold and all within
- `zm` unfold one level
- `zO` unfold current scope completely
- `zo` unfold current scope one level
- `zC`

### [null-ls](jose-elias-alvarez/null-ls.nvim)
Linting & Formatting. Using:
- `ruff` linter for python
- `black` formatting for python
- `clang` formatting for c++

### [octo.nvim](https://github.com/pwntester/octo.nvim):
Edit and review GitHub issues and PRs.
- `Octo pr` Open PR.
- `Octo pr changes` Show changes in PR.
- `gh auth refresh -s read:project` refresh projects rights with gith authenticator

### [tmux-lua](https://github.com/alexghergh/nvim-tmux-navigation)
Tmux installation for multiplexing / sessions.

### [telescope](https://github.com/nvim-telescope/telescope.nvim)
- `<leader> ff`- fuzzy find file
- `<leader> fg`- live grep

### [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
Better syntax highlighting than regex-based highlighting.

### [vim-jukit](https://github.com/luk400/vim-jukit)
editting and creating juypter notebooks.
- `<leader> co` Creating new cells
- `<leader> np` Convert file from .ipynb to .py and vice versa
- `<leader> os` send to output: 
- `<leader> J` - Jump to next cell below
- `<leader> K` - Jump to previous cell above
- `Shift Enter`- send current line to output split
- `<leader> ct` - create new markdown cell below
- `<leader> cc` - execute all cells until current one
- `<leader> all` - execute all cells
- `<leader> cj` - move cell one down
#### windows
- `<leader> od` Close output window

### [vimtex](https://github.com/lervag/vimtex)
latex compiler. best to be used together with reader that supports real time building 
(like [skim](https://dr563105.github.io/blog/skim-vimtex-setup/))

- `\ll` building (activating automatic compilation when saving)
- `gq` formatting

### [Copilot](https://github.com/github/copilot.vim)
GitHub Copilot integration.

- `:help copilot` - help
- `ctrl + J` - accept suggestion
