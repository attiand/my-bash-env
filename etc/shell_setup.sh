shopt -s globstar

alias difftool="code --diff"
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

#Set Bash prompt
if [ $MY_BASH_ENV_TYPE != 'remote' ]
  then
    export PS1='$(__git_ps1 "\[\e[0;32m\](%s)\[\e[0m\]");'  
  else
    export PS1='\[\033[0;35m\]\h\[\e[0m\]$(__git_ps1 "\[\e[0;32m\](%s)\[\e[0m\]");'
fi

#Set Bash title
export PROMPT_COMMAND='printf "\033]0;%s:%s:%s\007" "${USER}" "${NYAENV}" "${PWD/#$HOME/\~}"'

export EDITOR=vim

