command_exists(){
  command -v "$1">/dev/null 2>&1
}

if [ "$(uname)" == "Darwin" ]; then
  MY_BASH_ENV_OS='MAC'
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  MY_BASH_ENV_OS='LINUX'
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  MY_BASH_ENV_OS='WIN'
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
  MY_BASH_ENV_OS='WIN'
fi
