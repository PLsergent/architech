#!/bin/bash

pid=$(pgrep -t tty$(fgconsole) xinit)

import_environment() {
        (( pid )) && for var; do
                IFS='=' read key val < <(egrep -z "$var" /proc/$pid/environ)

                printf -v "$key" %s "$val"
                [[ ${!key} ]] && export "$key"
        done
}

import_environment XAUTHORITY USER
DISPLAY=:0

sudo -u $USER env DISPLAY=$DISPLAY i3lock-fancy && logger 'Session locked'

if [ $(cat /sys/class/power_supply/BAT0/status) = Discharging ]; then
    xset -display $DISPLAY dpms force off && logger 'Screen powered off';
fi

