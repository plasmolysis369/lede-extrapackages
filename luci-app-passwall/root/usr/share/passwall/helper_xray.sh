#!/bin/sh

add() {
	cat>>/tmp/dnsmasq.d/force-xray.conf<<EOF
no-resolv
server=127.0.0.1#7913
EOF
}

del() {
	rm -rf /tmp/dnsmasq.d/force-xray.conf > /dev/null
}

arg1=$1
shift
case $arg1 in
add)
	add $@
	;;
del)
	del $@
	;;
*) ;;
esac
