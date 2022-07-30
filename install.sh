#!/bin/bash

if [ -f ~/.tmux.conf ] ; then
	mv ~/.tmux.conf ~/.tmux.conf.bak
fi

cp tmux.conf ~/.tmux.conf  -a
ls -alh ~/.tmux.conf
echo "All done!"

