#!/bin/bash

if [[ -d "/sys/class/power_supply/BAT1" ]]; then
		echo `sh /home/mathieu/scripts/battery` `acpi | grep -oE "[[:digit:]]*%"` - `cat /sys/class/power_supply/BAT1/status` - `perl /usr/libexec/i3blocks/battery | grep -oE "[[:digit:]]*:[[:digit:]]*"` 
else
		echo "   No Battery"
fi
