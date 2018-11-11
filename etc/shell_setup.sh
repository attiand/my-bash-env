shopt -s globstar

alias xdiff="kdiff3"
alias remote="gnome-terminal --tab-with-profile=remote --"

if [ $MY_BASH_ENV_OS == 'LINUX' ]
  then
    if [ "$(. /etc/os-release; echo $NAME)" = "Ubuntu" ]; then
      source /usr/lib/git-core/git-sh-prompt
    else
      source /usr/share/git-core/contrib/completion/git-prompt.sh
    fi
fi

if [ $MY_BASH_ENV_OS == 'LINUX' ]
  then
    alias open='xdg-open &>/dev/null'
fi

if [ $MY_BASH_ENV_TYPE != 'remote' ]
  then
    export PS1='$(__git_ps1 "\[\e[0;32m\](%s)\[\e[0m\]");'  
  else
    export PS1='\[\033[0;35m\]\h\[\e[0m\]$(__git_ps1 "\[\e[0;32m\](%s)\[\e[0m\]");'
fi

if(command_exists "emacs")
  then
      export EDITOR='emacs -nw --load ~/git/my-bash-env/etc/emacs.d/init.el'
      alias emacs='emacs -nw --load ~/git/my-bash-env/etc/emacs.d/init.el'
fi
