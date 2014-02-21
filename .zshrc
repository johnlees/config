# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

#imported from .bashrc
#export PATH="/nfs/users/nfs_j/jl11/bin/:/nfs/users/nfs_j/jl11/.gem/ruby/1.9.1/bin:/software/intel-tools-2013//icsxe/2013.1.039/bin:/software/intel-tools-2013/advisor_xe_2013/bin64:/software/intel-tools-2013/vtune_amplifier_xe_2013/bin64:/software/intel-tools-2013/inspector_xe_2013/bin64:/software/intel-tools-2013//impi/4.1.1.036/intel64/bin:/software/intel-tools-2013//itac/8.1.3.037/intel64/bin:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/bin/intel64:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/mpirt/bin/intel64:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/debugger/gdb/intel64_mic/py27/bin:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/debugger/gdb/intel64/py27/bin:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/bin/intel64:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/bin/intel64_mic:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/debugger/gui/intel64:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/bin/intel64:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/mpirt/bin/intel64:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/debugger/gdb/intel64_mic/py27/bin:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/debugger/gdb/intel64/py27/bin:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/bin/intel64:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/bin/intel64_mic:/software/intel-tools-2013/composer_xe_2013_sp1.0.080/debugger/gui/intel64:/software/mpich-3.0.4/bin:/software/pathogen/external/apps/usr/local/arb-5.5//bin:/software/pathogen/external/apps/usr/local/bin:/software/pathogen/external/lib/bin:/software/pathogen/internal/prod/bin:/software/pathogen/external/bin:/software/pathogen/external/apps/usr/bin:/software/pubseq/bin/ncbi_blast+:/software/pubseq/bin:/usr/local/lsf/9.1/linux2.6-glibc2.3-x86_64/etc:/usr/local/lsf/9.1/linux2.6-glibc2.3-x86_64/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/software/bin"
# export MANPATH="/usr/local/man:$MANPATH"

#add to path and lib
export PATH=$HOME/bin/:$HOME/.gem/ruby/1.9.1/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib/:$LD_LIBRARY_PATH

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# History options
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

#ls colours (off for farm)
alias ls='ls --color=none'
alias ll='ls --color=auto'
#grep colours
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'

# Tab completion
setopt completeinword
autoload -U compinit
compinit

# superglobs
setopt extendedglob
unsetopt caseglob

# prompt
PS1='%n@%m:%~$ '

# report cpu time
REPORTTIME=10
