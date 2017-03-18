shopt -s globstar

export PS1="\[\e]0;\$(__git_ps1 \"(%s) \")\w\a\];"
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
