#!/bin/bash
PATH_tools=~/.42tools

if [ ! -d $PATH_tools ]; then
	git clone https://github.com/Carnagiul/leaks_checker.git $PATH_tools
fi

if [ $# -ge 1 ]
then
	if [ $1 = "install" ]
		then
			echo "install in progress"
			$PATH_tools/setup/add
	elif [ $1 = "uninstall" ]
		then
			echo "uninstall in progress"
			rm -rf $PATH_tools
	else
		echo "./install [install | uninstall]"
	fi
else
	echo "./install [install | uninstall]"
fi
