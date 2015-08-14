#!/bin/bash
if [ $# -ne 1 ];
then
	echo -e "\033[1;31m Usage: $0 URL\033[0m\n"
	exit -1
fi
is_first_time=0
if [ ! -e "last.html" ];
then
	is_first_time=1
	echo -e "\033[1;33m This is the first time to track this website\033[0m"
fi

curl --silent $1 -o recent.html

if [ $is_first_time -ne 1 ];
then
	changes=$(diff -u last.html recent.html)
	if [ -n "$changes" ];
	then
		echo -e "The changes are:\n"
		echo "$changes"
	else
		echo -e "\nWebsite no changes!"
	fi
fi
cp recent.html last.html

