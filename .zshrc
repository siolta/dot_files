# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Add pipx to $PATH
export PATH="$PATH:/home/skylar/.local/bin"

# Add homebrew path on linux
if [[ -f /etc/issue && `cat /etc/issue` == *Ubuntu* ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Kubectl configs
export KUBECONFIG=~/.kube/config-blackbramble:~/.kube/config

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Ensure sytax highlighting is at the LAST position
plugins=(aws ssh-agent fzf docker python poetry ruby rake rbenv)

# User configuration

# export PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# User defined options
# Type 'dir' instead of cd 'dir'
setopt AUTO_CD
# Only save one instance of each command in history
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias speed-test='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias is="dig +short txt istheinternetonfire.com | sed -e 's/\\; / /' -e 's/\"//g' -e 's/  / /g' | cowsay -f moose"
alias git-mega-update='for dir in $(ls); do cd $dir && git status; if [ $? -eq 0 ]; then git pull && cd ..; else cd ..; fi; done'
alias git-remove-untracked='git fetch --prune && git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -d'
alias weather='curl wttr.in'
eval $(thefuck --alias)

# Functions

# Export go settings
export GOPATH="$HOME/.go"

# Export ansible settings and configs
export ANSIBLE_NOCOWS=1

# Export fzf settings
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# Test and source iterm2 intergrations
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

## Highspot Specific Settings
[[ ! -f ~/.zshrc-hs ]] || source ~/.zshrc-hs

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
