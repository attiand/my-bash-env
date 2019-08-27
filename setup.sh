BASEDIR=$(dirname "$BASH_SOURCE")

BASEDIR=${BASEDIR%/}

# home, work, remote
if [ -z "${MY_BASH_ENV_TYPE}" ]; then
    MY_BASH_ENV_TYPE='work'
fi

source $BASEDIR/etc/bash_completion.d/eclaunch
source $BASEDIR/etc/bash_completion.d/nyaenv
source $BASEDIR/etc/common.sh
source $BASEDIR/etc/shell_setup.sh
source $BASEDIR/etc/setup_git.sh
source $BASEDIR/../maven-bash-completion/bash_completion.bash
source $BASEDIR/../gradle-completion/gradle-completion.bash

export PATH=$BASEDIR/bin:$PATH
#export HTOPRC=$BASEDIR/etc/htoprc
export ACKRC=$BASEDIR/etc/ackrc
