# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH=/Users/michaelxu/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Function
# Runs whenever pwd changes
function chpwd() {
	clear; pwd; ls -Ga
}

# Aliases
# shell command aliases
alias ls="clear; pwd; ls -G"

# SSH Aliases
alias sshMichael='ssh devbox'
alias sshRoot='ssh rdevbox'
alias fixSSH='ssh-add'

# dot file aliases 
alias vimrc='vim ~/dot_files/.vimrc'
alias xvimrc='vim ~/dot_files/.xvimrc'
alias zshrc='vim ~/dot_files/.zshrc'

alias rlzshrc='. ~/.zshrc'

# Commonly used directories aliases
alias mobileUtils='cd ~/mobile_utils'
alias ss='cd ~/SpaceSequencing'
alias ssAndroid='cd ~/SpaceSequencing/Android/space_sequencing/android/SpaceSequencingProject'
alias ssIos='cd ~/SpaceSequencing/IOS/space_sequencing/ios'
alias merchAndroid='cd ~/merchlogix_mobile/merchlogix_mobile'

alias school='cd ~/Google\ Drive/College/GTL\ Summer\ 2017'
alias cs2316='cd ~/Google\ Drive/College/Fall\ 2017/CS2316'
alias cs1332='cd ~/Google\ Drive/College/Spring\ 2018/CS\ 1332'
alias cs2110='cd ~/Google\ Drive/College/Spring\ 2018/CS\ 2110'
alias cs2340='cd ~/Google\ Drive/College/Spring\ 2018/CS\ 2340'
alias cs2340project='cd /Users/xu/Documents/CS2340_Project'
alias summer2018='cd ~/Google\ Drive/College/Summer\ 2018'
alias cs2110ta='cd ~/Google\ Drive/College/CS\ 2110\ TA'
alias cs2110ta_projects='cd ~/CS2110TA_projects'
alias cs3600='cd ~/Google\ Drive/College/Summer\ 2018/CS\ 3600'
alias projects='cd ~/Google\ Drive/Personal_Projects'
alias python2=python2.7
alias demograder='cp ../grader-summer18-tests-1.5.jar ./; java -jar grader-summer18-tests-1.5.jar'
alias gs='git status'
alias gcam='git commit -am'
alias gp='git pull'
alias fixds='find . -name '\''.DS_Store'\'' -type f -delete'
alias fall2018='cd ~/Google\ Drive/College/Fall\ 2018'
alias start4646='source ~/Google\ Drive/College/Fall\ 2018/CS\ 4646/ml4t-venv/bin/activate'
alias i2p='cd /Users/hanwenxu/projects/Unfoldit-iOS'

# Git Settings
git config --global user.name "Hanwen Xu"
git config --global user.email "xuhanwen97@gmail.com"

export PATH="/Users/xu/miniconda3/bin:$PATH"
pylc3DockerShell() {
	docker run -it --rm -v "$(pwd):/usr/src/grader" -v "$HOME/.zucchini:/root/.zucchini" ausbin/zucc bash
}

cs2110docker() {
    . ~/Google\ Drive/College/CS\ 2110\ TA/cs2110docker.sh
}

stopcs2110docker() {
    . ~/Google\ Drive/College/CS\ 2110\ TA/cs2110docker.sh stop
}
