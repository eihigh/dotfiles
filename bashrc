if [ -e $HOME/.rcrc ]; then
	for f in $HOME/.anysh/*; do source $f; done
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
