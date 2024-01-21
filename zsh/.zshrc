# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	auto-notify
	zsh-nvm
	kubectl
#	kube-ps1
	bash-quote
	linus-rants
)


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
#export nemo/.nvm/versions/node/v12.8.1/bin:/home/nemo/.nvm/versions/node/v12.8.1/bin:/home/nemo/bin:/home/nemo/bin:/usr/local/bin:/home/nemo/bin:/home/nemo/bin:/usr/local/bin:/home/nemo/.nvm/versions/node/v8.16.0/bin:/home/nemo/bin:/home/nemo/bin:/usr/local/bin:/home/nemo/.local/bin:/home/nemo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/nemo/Android/Sdk/tools:/home/nemo/Android/Sdk/tools/bin:/home/nemo/Android/Sdk/platform-tools:/home/nemo/Android/Sdk/emulator:/home/nemo/Android/Sdk/tools:/home/nemo/Android/Sdk/tools/bin:/home/nemo/Android/Sdk/platform-tools:/home/nemo/Android/Sdk/emulator:/home/nemo/Android/Sdk/tools:/home/nemo/Android/Sdk/tools/bin:/home/nemo/Android/Sdk/platform-tools:/home/nemo/Android/Sdk/emulator:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nemo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#nvm

# Nemos additions
export PATH="/home/nemo/bin:$PATH"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#nvm use lts/dubnium

# Android Studio
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools
# export PATH=$PATH:$ANDROID_HOME/emulator
# Set alias to shorten command to run emulator
# alias run-emu="$ANDROID_HOME/tools/emulator @pixel2"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Personal
alias which-port="sudo netstat -ano -p tcp  | grep $1"

# fight the evil
alias nano="nvim"

alias checksum="sha1sum"

# docker-compose
alias doco="cd ~/work/minds/ && docker-compose"
alias dexec="cd ~/work/minds/ && docker-compose exec"
alias dlogs="cd ~/work/minds && docker-compose logs -f --tail=10 $@"
alias dlog="dlogs"
alias dexecp="cd ~/work/minds && docker-compose exec php-fpm php /var/www/Minds/engine/cli.php"

# kubectl / k8s
alias k=kubectl
alias kpods="kubectl get pods | grep"
alias kexec="kubectl exec -it"
alias klogs="kubectl logs -f"
alias klog="klogs"
alias kdes="kubectl describe"
alias kcount="kubectl get pods | grep Running | wc -l"

# helm
alias herec="helm upgrade --wait"

alias dm-disk='docker run --rm -it -v /:/docker alpine:edge $@'
alias hgrep='history | grep'

alias minds='~/work/minds/local/local'

alias tg='terragrunt'

# Minds-related variables, aliases and functions
export DEVELOPMENT=/home/nemo/work
export MINDSROOT=$DEVELOPMENT/minds
export MINDSFRONT=$MINDSROOT/front
export MINDSMOBILE=$MINDSROOT/mobile-native
export MINDSENGINE=$MINDSROOT/engine
export MINDSCHARTS=$MINDSROOT/../helm-charts
export MINDSDOCS=$MINDSROOT/../docs

alias mdoco="cd $MINDSROOT && docker-compose"
alias minds=$MINDSROOT/local/local
alias minds-front-build=$MINDSROOT/local/front-build
alias minds-ssr-build=$MINDSROOT/local/ssr-build
alias minds-ssr-serve=$MINDSROOT/local/ssr-serve

# custom
alias minds-serve=$MINDSROOT/front/serve.sh

minds-cli() {
	cd $MINDSROOT
	docker-compose exec php-fpm php /var/www/Minds/engine/cli.php $@
}

es-browser() {
  google-chrome --disable-web-security --user-data-dir=~/unsecure-chrome https://dejavu.appbase.io/\?appname\=minds-metrics-\*\&url\=http://localhost:9200\&mode\=edit &
}

# Calico
alias calicoctl="calicoctl --allow-version-mismatch"

# Vitess
alias vtctlclient="vtctlclient --server localhost:15999 --alsologtostderr"
alias mysql="mysql -u user -h 127.0.0.1 -p"
alias mysqlsh="mysql -u user -h 127.0.0.1 -P 15306"
# bin/quotes
#echo "Linus Quote:"
#cd /home/nemo/personal/linus/ && ./random-quote.sh && cd ~
#echo "¯\\_(ツ)_/¯"
#
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# OCI auth
export OCI_CLI_AUTH=security_token

# kube_ps1 https://github.com/jonmosco/kube-ps1
# zsh theming https://gist.github.com/zulhfreelancer/c7a214a57761ea1f2195a06bc6e3dd1a
# PROMPT=$PROMPT'${reset_color}$fg[blue]%Bk8s:%b$(kube_ps1)${reset_color} %B$%b '

KUBE_PS1_NS_ENABLE=false
KUBE_PS1_SYMBOL_ENABLE=false
KUBE_PS1_DIVIDER=''
