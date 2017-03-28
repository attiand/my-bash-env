shopt -s globstar

if [ $MY_BASH_ENV_OS == 'LINUX' ]
  then
    if [ "$(. /etc/os-release; echo $NAME)" = "Ubuntu" ]; then
      source /usr/lib/git-core/git-sh-prompt
    else
      source /usr/share/git-core/contrib/completion/git-prompt.sh
    fi
fi

if [ $MY_BASH_ENV_TYPE != 'remote' ]
  then
    export PS1='$(__git_ps1 "\[\e[0;32m\](%s)\[\e[0m\]");'
fi

#export GIT_PS1_SHOWDIRTYSTATE=true
#export GIT_PS1_SHOWUNTRACKEDFILES=true

if(command_exists "emacs")
  then
    export EDITOR='emacs -nw'
fi
