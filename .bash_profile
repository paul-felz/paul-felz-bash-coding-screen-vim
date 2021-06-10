#ALIAS
alias br='cd '$BROWSEPATH
alias lib='cd '$LIBPATH
alias src='cd '$SRCPATH

#Kill attached screen session
killd () {
for session in $(screen -ls | grep -o '[0-9]\{5\}')
do
screen -S "${session}" -X quit;
done
}

#VIMPATH
export VIMINIT='source '$CONFPATH$VIMRC
term=xterm-256color
VIMCOLOR=$VIMCOLOR

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
