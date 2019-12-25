#!/bin/sh

source `dirname $0`/args
if which $name > /dev/null ; then
	echo '{"changed": false}'
else
	msg=$(sh -c "$action" 2>&1 > /dev/null) || f=', "failed": true'
	echo "{\"changed\": true, \"msg\": \"$msg\"$f}"
fi
