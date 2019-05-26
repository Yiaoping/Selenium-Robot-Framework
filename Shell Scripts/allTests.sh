#!/bin/sh
SHELL_FILES="TestSuite*.sh"
for f in TestSuite*.sh
do
	echo "Hello World"
	bash "$f" -H || break
done
echo "Completed"
