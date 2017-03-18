BASEDIR=$(cd $(dirname "$1") && pwd -P)/$(basename "$1")

BASEDIR=${BASEDIR%/}

BASEDIR=$BASEDIR/linuxenv

source $BASEDIR/etc/bash_completion.d/eclaunch
source $BASEDIR/etc/shell_setup.sh

export PATH=$BASEDIR/bin:$PATH
