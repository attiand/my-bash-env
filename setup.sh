BASEDIR=$(cd $(dirname "$1") && pwd -P)/$(basename "$1")

BASEDIR=${BASEDIR%/}

BASEDIR=$BASEDIR/my-linux-env

# home, work, remote
MY_LINUX_ENV_TYPE=work

source $BASEDIR/etc/bash_completion.d/eclaunch
source $BASEDIR/etc/common.sh
source $BASEDIR/etc/shell_setup.sh
source $BASEDIR/../maven-bash-completion/bash_completion.bash

export PATH=$BASEDIR/bin:$PATH
