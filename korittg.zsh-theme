# korittg oh-my-zsh theme
ZSH_THEME_GIT_PROMPT_PREFIX=" [%{$fg[blue]%}✎%{$reset_color%} %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
KUBE_PS1_PREFIX=" ["
KUBE_PS1_SUFFIX="]"
KUBE_PS1_SYMBOL_ENABLE=""

func exec_kube_ps1() {
    if typeset -f kube_ps1 > /dev/null; then
        kube_ps1
    fi
}


PROMPT='%{$fg[yellow]%}%1d%{$reset_color%}$(git_prompt_info)%{$reset_color%}$(exec_kube_ps1) %{$fg[blue]%}»%{$reset_color%} '
