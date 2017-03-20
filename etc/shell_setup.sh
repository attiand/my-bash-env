shopt -s globstar

if [ $MY_LINUX_ENV_OS == 'LINUX' ]
  then
    source /usr/lib/git-core/git-sh-prompt
fi

if [ $MY_LINUX_ENV_TYPE != 'remote' ]
  then
    export PS1='$(__git_ps1 "\[\e[0;32m\](%s)\[\e[0m\]");'
fi

#export GIT_PS1_SHOWDIRTYSTATE=true
#export GIT_PS1_SHOWUNTRACKEDFILES=true

if(command_exists "emacs")
  then
    export EDITOR='emacs -nw'
fi
