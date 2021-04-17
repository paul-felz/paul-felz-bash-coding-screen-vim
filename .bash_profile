#ALIAS
alias br='cd '$BROWSEPATH
alias lib='cd '$LIBPATH
alias bin='cd '$BINPATH

#Kill attached screen session
killd () {
for session in $(screen -ls | grep -o '[0-9]\{5\}')
do
screen -S "${session}" -X quit;
done
}

#export pwd path
function mark {
    export $1=`pwd`;
}

#VIMPATH
export MYVIMRC="$CONFPATH/.vimrc"
export VIMINIT=:set runtimepath+="$CONFPATH/.vim" | :source "$MYVIMRC"
export term=xterm-256color
export VIMCOLOR=$VIMCOLOR

PATH="/usr/local/bin:$PATH"
