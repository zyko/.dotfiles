#!/bin/bash 

white='#f8f8f2'
gray='#44475a'
dark_gray='#282a36' # dracula
# dark_gray='#504945' # gruvbox-light
light_purple='#bd93f9'
dark_purple='#6272a4'
cyan='#8be9fd'
green='#50fa7b'
orange='#ffb86c'
red='#ff5555'
pink='#ff79c6'
yellow='#f1fa8c'


function mrwatson() {
    local status=""
    if [[ "$(watson status)" == "No project started." ]]; then
        status=""
    fi
    local project=$(watson status | sed -n 's/Project \(.*\) started.*/\1/p')
    local total=$(watson report -dcG | grep 'Total:' | sed 's/Total: //')
    local slot=$(printf "%s %s %s" $project $status "${total}")
    printf "#[fg=%s]#[fg=%s]#[bg=%s] %s #[bg=%s]" $1 $2 $1 "${slot}" $1
}

mrwatson "$pink" "$dark_gray"
