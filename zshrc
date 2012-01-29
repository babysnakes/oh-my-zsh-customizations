# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow brew rails3 thor powder gem knife bundler rake runssh)

# use different customization directory
ZSH_CUSTOM=$HOME/.zsh/custom

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# path fixes
export PATH=${HOME}/usr/bin:${HOME}/Library/Python/2.7/bin:/opt/homebrew/bin:/opt/homebrew/sbin:${PATH}
export MANPATH=/opt/homebrew/share/man:$MANPATH

# rbenv
eval "$(rbenv init -)"

# editor
export EDITOR='vim'

# for the reset_path function
export ORIGINAL_PATH=${PATH}

# for ec2 tools
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_HOME="/opt/homebrew/Cellar/ec2-api-tools/1.5.0.1/jars"
