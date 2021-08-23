local logon="%F{245}%n@%m%{$reset_color%}"
local return_code="%B%(?:%F{green}➜:%F{red}➜)%b%{$reset_color%}"
local pwd="%F{cyan}%1~%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{blue}$(git_current_user_name)@git:(%F{red}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{blue})%F{yellow}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{blue})"

PROMPT='${logon} ${pwd} ${return_code} $(git_prompt_info)'
