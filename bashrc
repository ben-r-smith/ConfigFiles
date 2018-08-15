PS1='\W $ '

export CLICOLOR=1

PATH=$PATH:$HOME/bin

export GLM_INCLUDE_DIR=~/Documents/glm-0.9.8.3
export GLFW_DIR=~/Documents/glfw-3.2.1
export GLEW_DIR=~/Documents/glew-2.0.0
export EIGEN3_INCLUDE_DIR=~/Documents/eigen3

PYTHONPATH="/usr/local/lib/python3.6/site-packages:/usr/lib/python3.6/site-packages"

export SVNROOT="svn+ssh://parasol-svn.cs.tamu.edu/research/parasol-svn/svnrepository"

export AGROUP=$SVNROOT"/amatogroup"

alias worktimes="vi ~/worktimes"
alias s="cd .."
alias ake="make"
alias mke="make"
alias mkae="make"
alias maek="make"
alias 441="cd ~/School/CSCE441/Assignments/"
alias 411="cd ~/School/CSCE411/Homework/"
alias platformer="cd ~/Projects/Games/Platformer/"
alias sl='ls'

function cds {
  cd "$@" && ls;
}
