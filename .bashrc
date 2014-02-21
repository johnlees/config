#####################################################################################
##   Your Bash profile will work with out the need to edit either of your files:   ##
##                                                                                 ##
##              .bash_profile     or     .bashrc                                   ##
##                                                                                 ##
##   However if you would like to add to your environment settings, feel free      ##
##   to add your settings to this file.                                            ##
##                                                                                 ##
##   If you wish to completely disable all Sanger specfic Environment Variables    ##
##   then you can create the following empty text file at the top level of your    ##
##   unix home directory:                                                          ##
##                                                                                 ##
##                       .no_bashrc                                                ##
##                                                                                 ##
##   WARNING: Once created you will nolonger source any sanger environmental       ##
##            settings.                                                            ##
##                                                                                 ##
##   If you wish to discuss your setup requirements or just need advice then       ##
##   please contact helpdesk and we can help get you set up.                       ## 
##                                                                                 ##
##         Email: helpdesk@sanger.ac.uk  or  Phone: 7999 (01223 495300)            ##
##                                                                                 ##
#####################################################################################
#ls colours (off for farm)
alias ls='ls --color=none'
alias ll='ls --color=auto'
#grep colours
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'

#command history preferences
shopt -s histappend
shopt -s cmdhist
HISTCONTROL=ignoreboth
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTIGNORE='&:ls:ll:bg:fg:history:bjobs'
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

#pathogen setup
export LSB_DEFAULTPROJECT=analysis-rd
export LSB_DEFAULTGROUP=analysis-rd
if [ -z $PS1 ] ; then
    source /etc/bashrc
fi

#add to path and lib
export PATH=$HOME/bin/:$HOME/.gem/ruby/1.9.1/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib/:$LD_LIBRARY_PATH

#terminal title to pwd
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

#python path
export PYTHONPATH=$HOME/python/:$PYTHONPATH

#R path
prepend_path R_LIBS_USER $HOME/R-modules

# Finally, start zsh instead (and quit bash)
#exec zsh
