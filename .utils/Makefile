deploy:
	-cp -r ../vim/* ~/.vim/
	-../hooks/post-up
	echo 'deploy finished.'

install:
	./install-rcm
	export RCRC=~/dotfiles/rcrc && rcup
	echo 'install finished.'
