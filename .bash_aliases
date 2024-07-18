echo ".bash_aliases is executed!"
# following env variables are specific to device and must be set beforehand:
# 'CODE_DIR', 'CLOUD_DIR'

source ~/.watson_aliases
# todo: throw error if CODE_DIR or CLOUD_DIR not set.

export REPOS_DIR="${CODE_DIR}/repos"
export ENVS_DIR="${CODE_DIR}/envs"
export DOTFILES_DIR="${HOME}/.dotfiles"
export PIP_CONF_PATH="${HOME}/.pip/pip.conf"
export GIT_CONF_PATH="${HOME}/.gitconfig"

alias cdc="cd ${CODE_DIR}/"
alias cde="cd ${ENVS_DIR}"
alias cdr="cd ${REPOS_DIR}"
alias waa="nvim ${HOME}/.watson_aliases"

# __ ITERM __
export MPLBACKEND="module://itermplot"
# export MPLBACKEND="module://imgcat"  # only works for later tmux versions
export ITERMPLOT="rv"

# __ NVIM __
bindkey -v
bindkey ^R history-incremental-search-backward 
bindkey ^S history-incremental-search-forward
alias nv="nvim ."
alias nvimc="nvim ${HOME}/.config/nvim/"

# __ TMUX __
alias tmuxc="nvim ${HOME}/.tmux.conf"

# __ ZSH __
ZSH_THEME="powerlevel10k/powerlevel10k"
autoload -Uz compinit && compinit

alias l="ls -CF"
alias la="ls -A"
alias ll="ls -alF"
alias rl="source ~/.zshrc"
alias basha="nvim ~/.bash_aliases"
alias bashrc="nvim ~/.zshrc"

# __ Git __

alias gitcm="git commit -s -m"
alias gcm="git commit -s -m"
alias gits="git status"
alias gs="git status"
alias gitch="git checkout"
alias gch="git checkout"
alias gita="git add ."
alias ga="git add ."
alias gitpl="git pull"
alias gpl='git pull'
alias gitps='git push'
alias gps='git push'
alias gfo='git fetch origin'


# __JUPYTER __
#
# Jupyter Notebook (deprecated)
alias jp='jupyter notebook --no-browser --allow-root'
# --NotebookApp.allow_origin=* --NotebookApp.allow_remote_access=1'
alias jupdm='jt -t monokai -f fira -fs 13 -nf ptsans -nfs 11 -N -kl -cursw 5 -cursc r -cellw 90% -T -vim'

# project, repo and plugin aliases
alias dotf="cd ${DOTFILES_DIR}"
alias dalle="cd ${CODE_DIR}/data/dalle_images/"
alias default="cd ${CLOUD_DIR}/Projects/default/Notebooks && source ${ENVS_DIR}/env_default/bin/activate"
alias defaultjup="default && jp"
alias ca="cd ${REPOS_DIR}/chatalyser && source ${ENVS_DIR}/env_chatalyser/bin/activate"
alias cajup="ca && cd Notebooks && jp"
alias bit="cd ${REPOS_DIR}/bip_temperature && source ${ENVS_DIR}/env_bip_temperature/bin/activate"
alias bitjup="bit && cd Notebooks && jp"
alias testpy="default && nvim test.py"
