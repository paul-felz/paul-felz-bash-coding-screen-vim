#!/bin/bash
#bash script to start scripting with screen and vim
#Paul Felz - electrical engineering, coding and music-making in Berlin
#
source ./.bash_profile
mark CONFPATH

#Your Color
VIMCOLOR='deus'

#Your Paths
BINPATH='~/path/to/bin/'
LIBPATH='~/path/to/lib/'
BROWSEPATH='~/path/to/browse/'
MAINNAME='main.extension'


#start deatached screen with name "scripting" and own config .screenrc
screen -dmS scripting -c ./.screenrc

#style screen and vim coding environment
screen -S "scripting" -p 0 -X stuff "source ./.bash_profile; cd $BROWSEPATH$(printf \\r)"
screen -S "scripting" -p 1 -X stuff "source ./.bash_profile; cd $BINPATH$(printf \\r)"
screen -S "scripting" -p 2 -X stuff "source ./.bash_profile; cd $BINPATH; vim $MAINNAME$(printf \\r)"
screen -S "scripting" -p 3 -X stuff "source ./.bash_profile; cd $LIBPATH; vim -c ":Ex" -c ":Vex" -c ":Vex" $(printf \\r)"

#attach screen
screen -r scripting
