install:
	-ln -s `readlink -f bashrc-laurent-public` ~/.bashrc-laurent-public
	-ln -s `readlink -f vimrc` ~/.vimrc
	-ln -s `readlink -f tmux.conf` ~/.tmux.conf

uninstall:
	-test -h ~/.bashrc-laurent-public && rm ~/.bashrc-laurent-public
	-test -h ~/.vimrc && rm ~/.vimrc
	-test -h ~/.tmux.conf && rm ~/.tmux.conf
