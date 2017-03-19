shopt -s globstar

if [ $MY_LINUX_ENV_TYPE != 'remote' ]
  then
    export PS1="\[\e]0;\$(__git_ps1 \"(%s) \")\w\a\];"
fi

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

if(command_exists "emacs")
  then
    export EDITOR='emacs -nw'
fi
