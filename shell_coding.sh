#!/bin/bash
#bash script bootstrap for coding IDE with screen and vim
#Paul Smiles - electrical engineering, coding and music-making in Berlin
#

#Path and names of configuration files
export CONFPATH='~/path/to/etc/'
export RTPATH=$CONFPATH/.vim
export SCREENRC=.screenrc
export BASHRC=.bash_profile
export VIMRC=.vimrc

#Your Color
export VIMCOLOR='deus'

#Your Paths (please use full path)
export SRCPATH='~/path/to/src/'
export LIBPATH='~/path/to/lib/'
export BROWSEPATH='~/path/to/browse/'
MAINNAME=$SRCPATH'main.extension'

#start deatached screen with name "coding" and own config .screenrc
eval "screen -dmS coding -c $CONFPATH$SCREENRC"

#style screen and vim coding environment
screen -S "coding" -p 0 -X stuff "source $CONFPATH$BASHRC; cd $BROWSEPATH$(printf \\r)"
screen -S "coding" -p 1 -X stuff "source $CONFPATH$BASHRC; cd $SRCPATH$(printf \\r)"
screen -S "coding" -p 2 -X stuff "source $CONFPATH$BASHRC; cd $SRCPATH; vim $MAINNAME$(printf \\r)"
screen -S "coding" -p 3 -X stuff "source $CONFPATH$BASHRC; cd $LIBPATH; vim -c ":Ex" -c ":Vex" -c ":Vex" $(printf \\r)"

#attach screen
screen -r coding
