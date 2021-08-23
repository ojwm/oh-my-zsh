function brewup() {
    # Print beer mug if terminal supports unicode
    function beer() {
        [ -z "${LANG##*UTF-8*}" ] && printf "🍺 "
    }

    function prefix() {
        local green='\033[0;32m'
        local nc='\033[0m'
        printf "${green}➜${nc} $(beer)$1\n"
    }

    function run() {
        prefix $1
        eval "$1"
    }

    run 'brew update'
    run 'brew upgrade'
    run 'brew autoremove'
    run 'brew cleanup --prune=all'
}

alias bu=brewup
