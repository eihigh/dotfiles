source ${ZDOTDIR:-$HOME}/.bashrc

autoload -U compinit; compinit

setopt AUTO_CD

autoload -U colors; colors
export LSCOLORS=DxGxcxdxCxegedabagacad

# git info
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'%{$fg[magenta]%}${vcs_info_msg_0_}%{${reset_color}%}'

# funny prompt
PROMPT="
%(?.%{$fg[green]%}.%{$fg[cyan]%}){\__/} %{${fg[yellow]}%}%~%{${reset_color}%} %n@%m
%(?.%{$fg[green]%}.%{$fg[cyan]%})%(?!(*'-')o!(*;-;%)?) <%{${reset_color}%} "

PROMPT2='[%n]> '

# cd history
function chpwd() {
	_zqx_add_log
	l_zqx
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
	local dir
	if [ $# = 0 ]; then
		dir=$(tac $CDLOG | fzf) && cd "$dir"
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
[ -e $CDLOG ] && cd `tail -1 $CDLOG`

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
