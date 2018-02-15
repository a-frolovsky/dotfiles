# MNML theme for oh-my-zsh
# Author: Anton Frolovsky <antonfrolovsky@gmail.com>

local prefix="❱"
local dir="%{$fg_bold[black]%}%c%{$reset_color%}"

PROMPT='$prefix $dir $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="at %{$fg_bold[black]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔"
