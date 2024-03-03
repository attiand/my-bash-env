# Install

## Bash
```bash
git clone git@github.com:attiand/my-bash-env.git
git clone git@github.com:gradle/gradle-completion.git
git clone https://github.com/juven/maven-bash-completion.git

# directory for bash completion
mkdir ~/.bash_completion.d
```

Optional
```bash
cargo install starship --locked
```

Add the following to `.bashrc`

```bash
# home, work, remote
MY_BASH_ENV_TYPE='work'
MY_BASH_ENV_NAME='My Name'
MY_BASH_ENV_EMAIL='My email'
source ~/git/my-bash-env/setup_bash.sh
```

### 3PP
* [ack](https://beyondgrep.com)
* [bat](https://github.com/sharkdp/bat)


## Zsh

Install ohmyzsh: https://ohmyz.sh/

```bash
MY_BASH_ENV_TYPE='work'
MY_BASH_ENV_NAME='My Name'
MY_BASH_ENV_EMAIL='My email'
source ~/git/my-bash-env/setup_zsh.sh
```

# Configures
* Prompt
* Git
* Maven completion

