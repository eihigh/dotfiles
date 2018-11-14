if [ -e $HOME/.rcrc ]; then
	for f in $HOME/.anysh/*; do source $f; done
fi

autoload -U compinit
compinit
export LSCOLORS=DxGxcxdxCxegedabagacad

# cd history

function chpwd() {
	_zqx_add_log
	ls -laG
}

CDLOG=$HOME/.cache/cd.log

function _zqx_add_log() {
	local i=0
	cat $CDLOG | while read line; do
		(( i++ ))
		if [ i = 200 ]; then
			sed -i -e "200,200d" $CDLOG
		elif [ "$line" = "$PWD" ]; then
			sed -i -e "${i},${i}d" $CDLOG
		fi
	done
	echo "$PWD" >> $CDLOG
}

function _zqx() {
	if [ $# = 0 ]; then
		cd $(tac $CDLOG | fzf)
	elif [ $# = 1 ]; then
		cd $1
	else
		echo "_zqx: too many arguments"
	fi
}

__zqx() {
	_files -/
}

compdef __zqx _zqx

[ -e $CDLOG ] || touch $CDLOG

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
