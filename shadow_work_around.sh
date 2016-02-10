#!/bin/bb

ombra() {    
		local active=$(xprop -notype -root _NET_ACTIVE_WINDOW)
		local status=$(xprop -notype -id ${active##*\ } _COMPTON_SHADOW)
		if [ "$status" = "_COMPTON_SHADOW = 1" ]; then
				xprop -id ${active##*\ } -remove _COMPTON_SHADOW
		else
				xprop -id ${active##*\ } -f _COMPTON_SHADOW 32c -set _COMPTON_SHADOW 1
		fi
}

ombra

exit 0
