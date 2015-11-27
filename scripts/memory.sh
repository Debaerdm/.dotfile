#!/bin.bash

memory=`expr $(expr $(expr $(cat /proc/meminfo | grep MemAvailable | grep -oE "[[:digit:]]*")) - $(expr $(cat /proc/meminfo | grep MemFree | grep -oE "[[:digit:]]*"))) / 1024`

if test $memory -lt 1000; then
		echo `$memory`M
else
		cutBe=`echo $memory | cut -c 1`
		cutEnd=`echo $memory | cut -c 2-3`
		echo $cutBe,$cutEnd'G'
fi
