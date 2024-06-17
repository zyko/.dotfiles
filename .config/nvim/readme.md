# Neovim

partly following [this guide](https://www.playfulpython.com/configuring-neovim-as-a-python-ide/)

- `*` search forward of word beneath cursor
- `f<char>` put cursor on next character in line
    - `;` repeat operation
    - `:` repeat operation in opposite direction

Including following Plugins:

## Plugins

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
`y` copy file name.
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

### vimtex:  
latex compiler. best to be used together with reader that supports real time building.
- `\ll` building (activating automatic compilation when saving)
